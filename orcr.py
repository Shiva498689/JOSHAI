# import asyncpg
# import asyncio
# from langchain_core.tools import tool

# class ORCR_Retriever:
#     # 1. Remove 'async' from the class method
#     def run(self, rank: int, category: str, gender: str):
        
#         # We must use asyncpg's loop wrapper to handle the connection synchronously
#         async def fetch_data():
#             conn = await asyncpg.connect(
#                 user='postgres', password='admin123', database='testdb', host='127.0.0.1', port=5555
#             )
#             try:
#                 return await conn.fetch(
#                     "SELECT * FROM seat_allocation WHERE seat_type=$1 AND gender=$2", category, gender
#                 )
#             finally:
#                 await conn.close()
                
#         # Run the internal async connection task inside a synchronous execution block
#         values = asyncio.run(fetch_data())

#         l = []
#         for row in values:
#             r = row["opening_rank"]
#             cr = row["closing_rank"]
#             institute = row["institute"]
#             institute = institute[0:3] + " " + institute[3:]

#             record = [institute, row["academic_program"], r, cr, row["rank_type"]]
#             if rank > cr and (rank - cr) <= 250:
#                 l.append(record)
#             elif rank < cr and (cr - rank) <= 800:
#                 l.append(record)

#         p = sorted(l, key=lambda x: x[2])
#         return p[:10]

# db_retriever = ORCR_Retriever()

import asyncio
import asyncpg

s=[250,120,120,60,30,15]
h=[800,400,400,200,120,40]
class ORCR_Retriever:
    async def runa(self,ja_rank,category,gender):#for advanced rank
        conn = await asyncpg.connect(user='postgres', password='admin123',
                                    database='testdb', host='127.0.0.1',port=5555)
        values = await conn.fetch(
            "SELECT * FROM seat_allocation WHERE seat_type =$1 AND gender=$2 AND rank='adv'",category,gender 
        
        )
        

        l=[]
        c=["OPEN","OBC-NCL","GEN-EWS","SC","ST"]
        if category in c:
            self.low=s[c.index(category)]
            self.high=h[c.index(category)]
        else:
            self.low=25
            self.high=90
        for row in values:
            r=row["opening_rank"]
            cr=row["closing_rank"]
            institute=row["institute"]
            record={"Institute":institute,"Academic program":row["academic_program"],"Opening Rank":r,"Closing Rank":cr,"Alloted on basis of":"JEE Advanced" }
            if ja_rank>cr and (ja_rank-cr)<=self.low:
                l.append(record)
            if ja_rank<cr and (cr-ja_rank)<=self.high:
                l.append(record)

        p=sorted(l,key=lambda x:x["Opening Rank"],reverse=False)
        await conn.close()
        return p
    
    async def runm(self,jm_rank,category,gender): #for mains rank
        conn = await asyncpg.connect(user='postgres', password='postgres',
                                    database='orcr_data', host='127.0.0.1',port=5555)
        values = await conn.fetch(
            "SELECT * FROM seat_allocation WHERE seat_type =$1 AND gender=$2 AND rank='mains'",category,gender 
        
        )
        l=[]
        for row in values:
            r=row["opening_rank"]
            cr=row["closing_rank"]
            institute=row["institute"]
            record={"Institute":institute,"Academic program":row["academic_program"],"Opening Rank":r,"Closing Rank":cr,"Allotted on basis of":"JEE Mains"}
            if jm_rank<cr and (jm_rank-cr)<=self.low:
                l.append(record)
            
        p=sorted(l,key=lambda x:x["Opening Rank"],reverse=False)
        await conn.close()
        return p
        
        
    
# def main():
#     retriever=ORCR_Retriever()
#     options=asyncio.run(retriever.runa(20,"ST(PwD)","Gender-Neutral"))
#     print(options)
#     options=asyncio.run(retriever.runm(20,"OPEN(PwD)","Gender-Neutral"))

#     print(options)

# if __name__== "__main__":
#     main()
