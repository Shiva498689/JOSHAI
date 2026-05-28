import asyncio
import asyncpg

# Render Cloud Database Connection URL
RENDER_DB_URL = "postgresql://orcr_data_user:xpMmqmOebx8pBKaGfCG9Ela9E5aDlsup@dpg-d8ca9skua31s73arasn0-a.oregon-postgres.render.com/orcr_data"

class placement_Retriever:
    async def run(self, institute):
        # CHANGED: Connecting via the cloud URL directly
        conn = await asyncpg.connect(RENDER_DB_URL)
        
        values = await conn.fetch(
            "SELECT * FROM iit_placements WHERE institute =$1", institute
        )
        
        l = []
        for row in values:
            record = {}
            record["institute"] = row["institute"]
            record["year"] = row["year"]
            record["branch"] = row["branch"]
            
            t = ["median_ctc_lpa", "average_ctc_lpa", "highest_ctc_lpa", "lowest_ctc_lpa", "placement_percentage"]
            for i in t:
                if row[i]:
                    record[i] = row[i]
            record["source_link"] = row["source_link"]
            l.append(record)

        await conn.close()
        return l

# Uncomment below to test locally if needed
def main():
    retriever = placement_Retriever()
    options = asyncio.run(retriever.run("IIT Bombay"))
    print(options)

if __name__ == "__main__":
    main()
