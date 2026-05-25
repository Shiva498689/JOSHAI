import asyncpg
import asyncio
from langchain_core.tools import tool

class ORCR_Retriever:
    # 1. Remove 'async' from the class method
    def run(self, rank: int, category: str, gender: str):
        
        # We must use asyncpg's loop wrapper to handle the connection synchronously
        async def fetch_data():
            conn = await asyncpg.connect(
                user='orcrdb_user', password='QLx0ujiPF5Q1yrzrBYiNv5daKwDIZxWo', database='orcrdb', host='dpg-d8a4c9cm0tmc739ot6i0-a.oregon-postgres.render.com', port=5432
            )
            try:
                return await conn.fetch(
                    "SELECT * FROM seat_allocation WHERE seat_type=$1 AND gender=$2", category, gender
                )
            finally:
                await conn.close()
                
        # Run the internal async connection task inside a synchronous execution block
        values = asyncio.run(fetch_data())

        l = []
        for row in values:
            r = row["opening_rank"]
            cr = row["closing_rank"]
            institute = row["institute"]
            institute = institute[0:3] + " " + institute[3:]

            record = [institute, row["academic_program"], r, cr, row["rank_type"]]
            if rank > cr and (rank - cr) <= 250:
                l.append(record)
            elif rank < cr and (cr - rank) <= 800:
                l.append(record)

        p = sorted(l, key=lambda x: x[2])
        return p[:10]

db_retriever = ORCR_Retriever()


