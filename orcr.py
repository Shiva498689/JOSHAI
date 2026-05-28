import asyncio
import asyncpg

s = [250, 120, 120, 60, 30, 15]
h = [800, 400, 400, 200, 120, 40]

# Render Cloud Database Connection URL
RENDER_DB_URL = "postgresql://orcr_data_user:xpMmqmOebx8pBKaGfCG9Ela9E5aDlsup@dpg-d8ca9skua31s73arasn0-a.oregon-postgres.render.com/orcr_data"

class ORCR_Retriever:
    async def runa(self, ja_rank, category, gender):  # For Advanced
        conn = await asyncpg.connect(RENDER_DB_URL)
        
        values = await conn.fetch(
            "SELECT * FROM seat_allocation WHERE seat_type =$1 AND gender=$2 AND rank='adv'", category, gender 
        )
        
        l = []
        c = ["OPEN", "OBC-NCL", "GEN-EWS", "SC", "ST"]
        low = s[c.index(category)] if category in c else 25
        
        for row in values:
            r = row["opening_rank"]
            cr = row["closing_rank"]
            institute = row["institute"]
            record = {"Institute": institute, "Academic program": row["academic_program"], "Opening Rank": r, "Closing Rank": cr, "Alloted on basis of": "JEE Advanced"}
            
            if ja_rank <= cr or (ja_rank - cr) <= low:
                l.append(record)

        # Sort all valid matches by Opening Rank, then slice exactly the top 10 results [:10]
        p = sorted(l, key=lambda x: x["Opening Rank"], reverse=False)[:10]
        await conn.close()
        return p
    
    async def runm(self, jm_rank, category, gender):  # For Mains
        c = ["OPEN", "OBC-NCL", "GEN-EWS", "SC", "ST"]
        low = s[c.index(category)] if category in c else 25
        
        conn = await asyncpg.connect(RENDER_DB_URL)
        
        values = await conn.fetch(
            "SELECT * FROM seat_allocation WHERE seat_type =$1 AND gender=$2 AND rank='mains'", category, gender 
        )
        l = []
        for row in values:
            r = row["opening_rank"]
            cr = row["closing_rank"]
            institute = row["institute"]
            record = {"Institute": institute, "Academic program": row["academic_program"], "Opening Rank": r, "Closing Rank": cr, "Allotted on basis of": "JEE Mains"}
            
            if jm_rank <= cr or (jm_rank - cr) <= low:
                l.append(record)

        # FIXED: Sort everything first to find the true best options, then slice exactly the top 10 [:10]
        p = sorted(l, key=lambda x: x["Opening Rank"], reverse=False)[:10]
        await conn.close()
        return p
    
# def main():
#     retriever = ORCR_Retriever()
#     options = asyncio.run(retriever.runa(350, "OPEN", "Gender-Neutral"))
#     print(options)

# if __name__ == "__main__":
#     main()
