

# import asyncio
# import uuid
# import os
# import requests
# from typing import TypedDict, Annotated, Literal
# from contextlib import asynccontextmanager

# from fastapi import FastAPI, HTTPException, Query
# from fastapi.middleware.cors import CORSMiddleware
# from dotenv import load_dotenv

# from orcr import ORCR_Retriever
# from langgraph.graph import StateGraph, START, END
# from langgraph.graph.message import add_messages
# from langchain_groq import ChatGroq
# from langchain_core.messages import HumanMessage, AIMessage, SystemMessage, ToolMessage
# from langchain_core.tools import tool

# load_dotenv()


# SESSION_STORAGE = {}
# USER_ID = "iit_dev_001"

# @asynccontextmanager
# async def lifespan(app: FastAPI):
#     print("Compiling LangGraph architecture and initializing Agent...")
#     agent.initialize()
#     yield
#     print("Shutting down server...")

# app = FastAPI(lifespan=lifespan)

# app.add_middleware(
#     CORSMiddleware,
#     allow_origins=["*"],
#     allow_methods=["*"],
#     allow_headers=["*"],
# )

# db_retriever = ORCR_Retriever()


# @tool
# async def retrieve_college_allocations(rank: int, category: str, gender: str) -> str:
#     """
#     Queries the database to look up acceptable engineering colleges and academic programs 
#     based on a student's rank, seat category, and gender type.
#     Use this tool whenever the user asks questions like: 'What colleges can I get with rank X?', 
#     'Predict my engineering options', or 'Where should I apply for my cutoff score?'.

#     Args:
#         rank: The user's entry ranking numerical integer score (e.g., 1688).
#         category: The allocation seat type (e.g., 'OPEN', 'OBC-NCL', 'SC', 'ST', 'GEN-EWS').
#         gender: The category group (e.g., 'Gender-Neutral' or 'Female-Only').
#     """
#     print(f"   [Tool Execution] Querying DB for Rank: {rank}")
#     try:
#         # Offload sync DB code to an execution thread pool safely
#         results = await asyncio.to_thread(db_retriever.run, rank, category, gender)
        
#         if not results:
#             return "No colleges found."

#         formatted_lines = [f"{i}. {item[0]} | {item[1]} | Ranks: {item[2]}-{item[3]}" for i, item in enumerate(results, start=1)]
#         return "Database Matching Allocations:\n" + "\n".join(formatted_lines)
#     except Exception as e:
#         return f"Database lookup failed: {str(e)}"

# @tool
# def search_google_images(query: str) -> str:
#     """
#     Searches Google Images using Serper.dev and returns the top image URL.
#     Use this tool whenever the user explicitly asks to see a photo, image, 
#     picture, or visual representation of something.
    
#     Args:
#         query: The visual subject to look up (e.g., "IIT Bombay campus", "Eiffel Tower").
#     """
#     print(f"   [Tool Execution] Searching Google Images for: {query}")
    
#     api_key = os.environ.get("SERPER_API_KEY")
#     if not api_key:
#         return "Error: SERPER_API_KEY is not set."
        
#     url = "https://google.serper.dev/images"
#     payload = {"q": query, "num": 3}
#     headers = {'X-API-KEY': api_key, 'Content-Type': 'application/json'}
    
#     try:
#         response = requests.post(url, headers=headers, json=payload)
#         response.raise_for_status()
#         data = response.json()
        
#         images = data.get("images", [])
#         if not images:
#             return f"No images found for '{query}'."
            
#         first_image = images[0]
#         image_url = first_image.get("imageUrl")
#         title = first_image.get("title", "Image")
        
#         return f"Found Image for '{query}':\nTitle: {title}\nURL: {image_url}"
#     except Exception as e:
#         return f"Image search failed: {str(e)}"

# @tool
# def search_web_serper(query: str) -> str:
#     """
#     Searches the web using Google Search (via Serper.dev).
#     Use this for real-time information, current events and utilising the search engine.
    
#     Args:
#         query: The search query.
#     """
#     print(f"   [Tool Execution] Searching Web for: {query}")
#     api_key = os.environ.get("SERPER_API_KEY")
#     if not api_key:
#         return "Error: SERPER_API_KEY is not set in environment variables."
        
#     url = "https://google.serper.dev/search"
#     payload = {"q": query}
#     headers = {'X-API-KEY': api_key, 'Content-Type': 'application/json'}
    
#     try:
#         response = requests.post(url, headers=headers, json=payload)
#         response.raise_for_status()
#         data = response.json()
        
#         snippets = []
#         for item in data.get("organic", [])[:3]:
#             snippets.append(f"- {item.get('title')}: {item.get('snippet')}")
            
#         if not snippets:
#             return "No web results found."
            
#         return "Web Search Results:\n" + "\n".join(snippets)
#     except Exception as e:
#         return f"Web search failed: {str(e)}"

# class AgentState(TypedDict):
#     messages: Annotated[list, add_messages]
#     short_term_memory: list  
#     session_id: str
#     user_id: str
#     turn_count: int
#     tools_used: list
#     api_calls_count: int
#     errors: list
#     current_input: str
#     final_response: str
#     output_json: dict

# class OrchestratorAgent:
#     def __init__(self, window_size: int = 5):
#         self.llm = None
#         self.tools = []
#         self.graph = None
#         self.window_size = window_size 
    
#     def initialize(self):
#         self.tools = [search_google_images, search_web_serper, retrieve_college_allocations]
#         groq_api_key = os.environ.get("GROQ_API_KEY")
        
#         if not groq_api_key:
#             raise ValueError("CRITICAL: GROQ_API_KEY environment variable is missing.")
            
#         self.llm = ChatGroq(
#             model="openai/gpt-oss-120b",
#             temperature=0,
#             api_key=groq_api_key
#         ).bind_tools(self.tools)
        
#         self.graph = self._build_graph()

#     def _build_graph(self):
#         builder = StateGraph(AgentState)
        
#         builder.add_node("load_memory", self._load_memory_node)
#         builder.add_node("agent", self._agent_node)
#         builder.add_node("tools", self._tools_node)
#         builder.add_node("save_memory", self._save_memory_node)
#         builder.add_node("format_output", self._format_output_node)
        
#         builder.add_edge(START, "load_memory")
#         builder.add_edge("load_memory", "agent")
        
#         builder.add_conditional_edges(
#             "agent",
#             self._route_after_agent,
#             {"tools": "tools", "save_memory": "save_memory"}
#         )
        
#         builder.add_edge("tools", "agent")
#         builder.add_edge("save_memory", "format_output")
#         builder.add_edge("format_output", END)
        
#         return builder.compile()

#     def _load_memory_node(self, state: AgentState) -> dict:
#         system_prompt = """You are a highly capable AI assistant with access to web search for both Text and Images.
        
#         INSTRUCTIONS:
#         1. Use `search_google_images` when the user wants an image. Generally try to include the image in your response.
#         2. Use `search_web_serper` for live news, current events, or technical documentation.
#         3. ALWAYS provide the image URL to the user if the search_google_images tool returns one. Format it cleanly like: [Image Link](url)
#         4. Use the conversation history to understand context.
#         5. Please do not return anything if your tool call failed and reply with sorry.
#         6. Try to give short, crisp, and to-the-point answers. Do not elaborate unless specifically asked.
#         7. If someone asks about IIT Indore, welcome them with sweet words as you are the AI hosted by IIT Indore.
#         8. If you are asked to search about the Opening and Closing ranks of any IIT and any branch, you can use the tool named retrieve_college_allocations.
#         """
#         convmsg = [SystemMessage(content=system_prompt)]
#         for memory_item in state.get("short_term_memory", []):
#             if memory_item["role"] == "user":
#                 convmsg.append(HumanMessage(content=memory_item["content"]))
#             elif memory_item["role"] == "ai":
#                 convmsg.append(AIMessage(content=memory_item["content"]))
                
#         convmsg.append(HumanMessage(content=state["current_input"]))
#         return {"messages": convmsg}
    
#     async def _agent_node(self, state: AgentState) -> dict:
#         print(f"\n [AGENT NODE] - API call #{state.get('api_calls_count', 0) + 1}")
#         try:
#             response = await self.llm.ainvoke(state["messages"])
#             tool_calls_requested = response.tool_calls if hasattr(response, 'tool_calls') else []
#             if tool_calls_requested:
#                 print(f"   Tool calls requested: {[tc['name'] for tc in tool_calls_requested]}")
            
#             return {
#                 "messages": [response],
#                 "api_calls_count": state.get("api_calls_count", 0) + 1
#             }
#         except Exception as e:
#             print(f"   LLM call failed: {e}")
#             return {
#                 "messages": [AIMessage(content=f"Error: {str(e)}")],
#                 "errors": state.get("errors", []) + [str(e)],
#                 "api_calls_count": state.get("api_calls_count", 0) + 1
#             }
    
#     async def _tools_node(self, state: AgentState) -> dict:
#         print("\n[TOOLS NODE]")
#         last_message = state["messages"][-1]
#         tools_lookup = {t.name: t for t in self.tools}
        
#         tool_results = []
#         tools_used = state.get("tools_used", [])
#         errors = state.get("errors", [])
        
#         for tool_call in last_message.tool_calls:
#             tool_name = tool_call["name"]
#             tool_args = tool_call["args"]
#             tool_call_id = tool_call["id"]
            
#             print(f"   Executing: {tool_name}")
#             try:
#                 tool_func = tools_lookup.get(tool_name)
#                 # Simple check for sync vs async execution call routes
#                 if tool_func:
#                     if asyncio.iscoroutinefunction(tool_func.ainvoke):
#                         result = await tool_func.ainvoke(tool_args)
#                     else:
#                         result = tool_func.invoke(tool_args)
#                 else:
#                     result = f"Tool '{tool_name}' not found"

#                 tools_used.append({"tool": tool_name, "args": tool_args, "success": True})
#                 tool_results.append(ToolMessage(content=str(result), tool_call_id=tool_call_id))
#             except Exception as e:
#                 print(f"   Tool {tool_name} failed: {e}")
#                 tools_used.append({"tool": tool_name, "args": tool_args, "success": False, "error": str(e)})
#                 errors.append(str(e))
#                 tool_results.append(ToolMessage(content=f"Error: {str(e)}", tool_call_id=tool_call_id))
                
#         return {"messages": tool_results, "tools_used": tools_used, "errors": errors}
    
#     def _save_memory_node(self, state: AgentState) -> dict:
#         print("\n[SAVE MEMORY NODE]")
#         final_ai_response = ""
#         for msg in reversed(state["messages"]):
#             if isinstance(msg, AIMessage) and msg.content:
#                 final_ai_response = msg.content
#                 break
        
#         current_memory = state.get("short_term_memory", [])
#         current_memory.append({"role": "user", "content": state["current_input"]})
#         current_memory.append({"role": "ai", "content": final_ai_response})
        
#         max_messages = self.window_size * 2
#         if len(current_memory) > max_messages:
#             current_memory = current_memory[-max_messages:]
#             print(f"   Trimming memory window down to the last {self.window_size} turns.")
        
#         return {
#             "short_term_memory": current_memory,
#             "turn_count": state.get("turn_count", 0) + 1,
#             "final_response": final_ai_response
#         }
    
#     def _format_output_node(self, state: AgentState) -> dict:
#         print("\n[FORMAT OUTPUT NODE]")
#         output_json = {
#             "status": "success" if not state.get("errors") else "partial_success",
#             "session_id": state["session_id"],
#             "user_id": state["user_id"],
#             "turn": state.get("turn_count", 1),
#             "output": {"response": state.get("final_response", "")},
#             "memory": {"messages_in_window": len(state.get("short_term_memory", []))},
#             "performance": {"api_calls_made": state.get("api_calls_count", 0)},
#             "errors": state.get("errors", [])
#         }
#         return {"output_json": output_json}
    
#     def _route_after_agent(self, state: AgentState) -> Literal["tools", "save_memory"]:
#         last_message = state["messages"][-1]
#         return "tools" if hasattr(last_message, "tool_calls") and last_message.tool_calls else "save_memory"

#     async def chat(self, user_message: str, user_id: str, session_id: str, short_term_memory: list) -> dict:
#         initial_state = {
#             "messages": [],
#             "short_term_memory": short_term_memory,
#             "session_id": session_id,
#             "user_id": user_id,
#             "current_input": user_message,
#         }
#         final_state = await self.graph.ainvoke(initial_state)
#         return {
#             "output_json": final_state["output_json"],
#             "updated_memory": final_state["short_term_memory"]
#         }

# agent = OrchestratorAgent(window_size=5)

# @app.post("/chat")
# async def joshai(query: str, session_id: str = Query(default="default_session")) -> dict:   
#     global SESSION_STORAGE
    
#     history = SESSION_STORAGE.get(session_id, [])
    
#     try:
#         result = await agent.chat(
#             user_message=query,
#             user_id=USER_ID,
#             session_id=session_id,
#             short_term_memory=list(history)
#         )
        
#         SESSION_STORAGE[session_id] = result["updated_memory"]
#         ai_response = result["output_json"].get("output", {}).get("response", "")
        
#         return {"ans": f"\n AI:\n{ai_response}\n"}
        
#     except Exception as e:
#         return {"ans": f"\n Execution Error: {e}\n"}

import asyncio
import uuid
import os
import itertools
import httpx  
from typing import TypedDict, Annotated, Literal
from contextlib import asynccontextmanager
from placement import placement_Retriever
from fastapi import FastAPI, HTTPException, Query
from fastapi.responses import StreamingResponse  
from fastapi.middleware.cors import CORSMiddleware
from dotenv import load_dotenv

from qdrant import rulesretriever
from orcr import ORCR_Retriever
from langgraph.graph import StateGraph, START, END
from langgraph.graph.message import add_messages
from langchain_groq import ChatGroq
from langchain_core.messages import HumanMessage, AIMessage, SystemMessage, ToolMessage
from langchain_core.tools import tool

# load_dotenv()


PASTE_GROQ_KEYS_HERE = os.environ.get("GROQ_API_KEY")
PASTE_SERPER_KEY_HERE = os.environ.get("SERPER_API_KEY")


SESSION_STORAGE = {}

class APIKeyRotator:
    def __init__(self, raw_keys_string: str):
        self.keys = [k.strip() for k in raw_keys_string.split(",") if k.strip()]
        if not self.keys:
            raise ValueError("CRITICAL: No valid API keys provided in configuration.")
        self.pool = itertools.cycle(self.keys)
        print(f"Successfully initialized Key Pool with {len(self.keys)} keys.")

    def get_next_key(self) -> str:
        return next(self.pool)

groq_key_rotator = APIKeyRotator(PASTE_GROQ_KEYS_HERE)

@asynccontextmanager
async def lifespan(app: FastAPI):
    agent.initialize()
    yield

app = FastAPI(lifespan=lifespan)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

db_retriever = ORCR_Retriever()
retriever = rulesretriever()
placement_retriever = placement_Retriever()


@tool
async def retrieve_college_allocations_JEE_Adv(rank: int, category: str, gender: str) -> str:
    """Queries the database to look up acceptable engineering colleges and academic programs based on a student's rank. For specifically JEE MAINS and IIITs and NITs .
    Args 
     rank :the student's JEE ADVANCED rank in integer  .
     category : for e.g. OPEN,OBC-NCL,GEN-EWS,SC,ST ,
      gender : the gender of the user like Gender-Neutral or Female-Only."""   
    try:
        results = await asyncio.to_thread(db_retriever.runa, rank, category, gender)
        if not results:
            return "No colleges found"
        return "Database Matching Allocations:\n" + str(results)
    except Exception as e:
        return f"Database lookup failed: {str(e)}"
@tool
async def retrieve_college_allocations_JEE_Main(rank: int, category: str, gender: str) -> str:
    """Queries the database to look up acceptable engineering colleges and academic programs based on a student's rank. For specifically JEE MAINS and IIITs and NITs .
    Args 
     rank :the student's JEE MAIN rank in integer  .
     category : for e.g. OPEN,OBC-NCL,GEN-EWS,SC,ST ,
      gender : the gender of the user like Gender-Neutral or Female-Only."""
    try:
        results = await asyncio.to_thread(db_retriever.runm, rank, category, gender)
        if not results:
            return "No colleges found"
        return "Database Matching Allocations:\n" + str(results)
    except Exception as e:
        return f"Database lookup failed: {str(e)}"
@tool
async def placement_data(institute: str) -> str:
    """Fetches the latest placement statistics for a specified institute from the database."""
    try :
        results = await asyncio.to_thread(placement_retriever.run , institute)
        s = ""
        for item in results :
            s = s+ item
        if not results :
            return f"No placements data found for {institute} . "
        return f"placements results for {institute} are : {s}"
    except Exception as e:
        return f"placement data retrieval faile ."


@tool
async def search_jossa(query: str) -> str:
    """Queries the local indexed document cache for official JoSAA rules, requirements, and reference PDFs."""
    try:
        response = await asyncio.to_thread(retriever.search, query, 3)
        return f"Found response for '{query}':\nresponse : {response}"
    except Exception as e:
        return f"JoSAA local index search failed: {str(e)}"

@tool
async def search_google_images(query: str) -> str:
    """Searches Google Images using Serper.dev and returns the top image URL."""
    url = "https://google.serper.dev/images"
    payload = {"q": query, "num": 3}  
    headers = {"X-API-KEY": PASTE_SERPER_KEY_HERE, "Content-Type": "application/json"}
    
    async with httpx.AsyncClient() as client:
        try:
            response = await client.post(url, headers=headers, json=payload, timeout=10.0)
            response.raise_for_status()
            data = response.json()
            
            images = data.get("images", [])
            if not images:
                return f"no images found for: {query}"
                
            fi = images[0]
            return f"image for '{query}' is:\nTitle: {fi.get('title', 'Image')}\nURL: {fi.get('imageUrl')}"
        except Exception as e:
            return f"image search failed for query: {query}"

@tool
async def search_web_serper(query: str) -> str:
    """Searches the web via live Google engines to retrieve the latest real-time status and information updates."""
    if not PASTE_SERPER_KEY_HERE:
        return "Error: SERPER_API_KEY is not set."
        
    url = "https://google.serper.dev/search"
    payload = {"q": query}
    headers = {"X-API-KEY": PASTE_SERPER_KEY_HERE, "Content-Type": "application/json"}
    
    async with httpx.AsyncClient() as client:
        try:
            response = await client.post(url, headers=headers, json=payload, timeout=10.0)
            response.raise_for_status()
            data = response.json()
            snippets = []
            for item in data.get("organic", [])[0:3]:
                snippets.append(f"title : {item.get('title')}\nsnippet : {item.get('snippet')}")
            if not snippets:
                return f"found nothing on web about {query}"
            
            return "web search has given:\n" + "\n".join(snippets)
        except Exception as e:
            return f"Web search for query: {query} returned an error or empty context."


class AgentState(TypedDict):
    messages: Annotated[list, add_messages]
    short_term_memory: list  
    session_id: str
    user_id: str
    current_input: str

class OrchestratorAgent:
    def __init__(self, window_size = 5):
        self.tools = []
        self.llm_pool = None 
        self.graph = None 
        self.ws = window_size

    def initialize(self):
             
                      
        self.tools = [search_google_images, search_web_serper,search_jossa,retrieve_college_allocations_JEE_Main ,placement_data ,retrieve_college_allocations_JEE_Adv ]
        
        
        keys = [it.strip() for it in PASTE_GROQ_KEYS_HERE.split(",") if it.strip()]
        if not keys:
            raise ValueError("No keys found please check the api store.")
            
        llm_instances = []
        for key in keys:
            instance = ChatGroq(
                model="openai/gpt-oss-120b", 
                temperature=0,
                groq_api_key=key
            ).bind_tools(self.tools)
            llm_instances.append(instance)
            
        self.llm_pool = itertools.cycle(llm_instances)
        print(f"Successfully initialized LLM Pool with {len(llm_instances)} distinct API connections.")
        self.graph = self._build_graph()

    def _build_graph(self):
        builder = StateGraph(AgentState)
        builder.add_node("load_memory", self._load_memory_node)
        builder.add_node("agent", self._agent_node)
        builder.add_node("tools", self._tools_node)
        
        builder.add_edge(START, "load_memory")
        builder.add_edge("load_memory", "agent")
        builder.add_conditional_edges(
            "agent",
            self._route_after_agent,
            {"tools": "tools", END: END}
        )
        builder.add_edge("tools", "agent")
        return builder.compile()

    def _load_memory_node(self, state: AgentState) -> dict:
        system_prompt = """You are a highly capable AI assistant with access to web search for both Text and Images.
        INSTRUCTIONS:
        1. Use `search_google_images` when the user wants an image. Format it cleanly like: [Image Link](url)
        2. Use `search_web_serper` for live news or current events.
        3. Give short, crisp, and to-the-point answers. Do not elaborate unless specifically asked.
        4. If someone asks about IIT Indore, welcome them with sweet words as you are the AI hosted by IIT Indore.
        5. If asked to search about Opening and Closing ranks of any IIT and any branch, use retrieve_college_allocations.
        """
        convmsg = [SystemMessage(content=system_prompt)]
        for item in state.get("short_term_memory", [])[-5:]:
            if item.get("role") == "user":
                convmsg.append(HumanMessage(content=item["content"]))
            elif item.get("role") == "ai":
                convmsg.append(AIMessage(content=item["content"]))
                
        convmsg.append(HumanMessage(content=state.get("current_input")))
        return {"messages": convmsg} 
    
    async def _agent_node(self, state: AgentState) -> dict:
        current_llm = next(self.llm_pool)
        try:
            response = await current_llm.ainvoke(state["messages"])
            return {"messages": [response]}
        except Exception as e:
            print(f"   [LLM Pool Failover Triggered] Error context: {e}")
            fallback_message = AIMessage(content="⚠️ Request peak limit reached across current pipeline node. Retrying connection...")
            return {"messages": [fallback_message]}
 

    async def _tools_node(self, state: AgentState) -> dict:
        last_message = state["messages"][-1]
        tools_lookup = {t.name: t for t in self.tools}
        tool_results = []
        
        for tool_call in last_message.tool_calls:
            tool_func = tools_lookup.get(tool_call["name"])
            if tool_func:
                result = await tool_func.ainvoke(tool_call["args"])
                tool_results.append(ToolMessage(content=str(result), tool_call_id=tool_call["id"]))
                
        return {"messages": tool_results}
    
    def _route_after_agent(self, state: AgentState) -> Literal["tools", END]:
        last_message = state["messages"][-1]
        return "tools" if hasattr(last_message, "tool_calls") and last_message.tool_calls else END

    def get_stream(self, initial_state: dict):
        return self.graph.astream(initial_state, stream_mode="messages")

agent = OrchestratorAgent(window_size=5)


@app.post("/chat")
async def joshai(
    query: str, 
    username: str = Query(..., description="Unique user identification name required to access chat"),
    session_id: str = Query(default="default_session")
):    
    cleaned_username = username.strip()
    if not cleaned_username or len(cleaned_username) < 3:
        raise HTTPException(
            status_code=400, 
            detail="Access Denied: A valid, unique username (minimum 3 characters) must be provided."
        )

    storage_key = f"{cleaned_username}_{session_id}"
    
    global SESSION_STORAGE
    history = SESSION_STORAGE.get(storage_key, [])
    
    initial_state = {
        "messages": [],
        "short_term_memory": list(history),
        "session_id": session_id,
        "user_id": cleaned_username, 
        "current_input": query,
    }

    async def token_streamer():
        full_reply = ""
        async for message, metadata in agent.get_stream(initial_state):
            if isinstance(message, AIMessage) and metadata.get("langgraph_node") == "agent":
                if message.content:
                    full_reply += message.content
                    yield message.content

        history.append({"role": "user", "content": query})
        history.append({"role": "ai", "content": full_reply})
        SESSION_STORAGE[storage_key] = history[-10:]  

    return StreamingResponse(token_streamer(), media_type="text/plain")

