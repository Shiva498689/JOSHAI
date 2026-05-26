from qdrant_client import QdrantClient
from sentence_transformers import SentenceTransformer
from rank_bm25 import BM25Okapi

api="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhY2Nlc3MiOiJtIiwic3ViamVjdCI6ImFwaS1rZXk6MjBhZWUyOWYtMDU5OC00OGM0LWJkMDMtNGU4YTE3MGFiMDEzIn0.gJ9hIQCNvLleJydfDp0PrWVSZE5R7GAbi5cKI5f5GCM"
url="https://3463a70a-212e-4ee7-b027-a65de3c43055.us-east4-0.gcp.cloud.qdrant.io"
model=SentenceTransformer("all-MiniLM-L6-v2")
class rulesretriever:
     def __init__(self):
          self.client=QdrantClient(
                url=url,
                api_key=api,
                cloud_inference=True,  # Enable remote inference
                )
          
     def search(self,query,numberofchunks):
          query_vector=model.encode(query,convert_to_numpy=True) 
          results=self.client.query_points(collection_name="rules",query=query_vector,limit=numberofchunks*4).points
          l=[]
          k=[]
          for r in results:
               p=r.payload
               m=p["metadata"]
               t=m.split()
               l.append(t)
               k.append(p["text"])
          bm25=BM25Okapi(l)
          i=query.split()
          scores=bm25.get_scores(i)
          scores=sorted(enumerate(scores),reverse=True,key=lambda x:x[1] )[:numberofchunks:1]
          selectedchunks=""
          for idx,s in scores:
               selectedchunks = selectedchunks + (k[idx])
          return selectedchunks

# def main():
#     retriever=rulesretriever()
#     print(retriever.search("seat acceptance fee of josaa",5))#5 is number of chunks

# if __name__ =="__main__":
#      main()
