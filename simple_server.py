from fastapi import FastAPI, Request

app = FastAPI()

@app.post("/")
async def receive_post(request: Request):
    body = await request.json()
    print(body)
    return {"status": "received", "data": body}
