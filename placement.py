import asyncio
import asyncpg


class placement_Retriever:
    async def run(self,institute):
        conn = await asyncpg.connect(user='postgres', password='postgres',
                                    database='orcr_data', host='127.0.0.1',port=5555)
        values = await conn.fetch(
            "SELECT * FROM iit_placements WHERE institute =$1",institute
        
        )
        l=[]
        for row in values:
            record={}
            record["institute"]=row["institute"]
            record["year"]=row["year"]
            record["branch"]=row["branch"]
            t=["median_ctc_lpa","average_ctc_lpa","highest_ctc_lpa","lowest_ctc_lpa","placement_percentage"]
            for i in t:
                if row[i]:
                    record[i]=row[i]
            record["source_link"]=row["source_link"]
            l.append(record)

            
        await conn.close()
        return l
    
   
        
    
# def main():
#     retriever=placement_Retriever()
#     options=asyncio.run(retriever.run("IIT Bombay"))
#     print(options)

# if __name__== "__main__":
#     main()