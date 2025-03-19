from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello from Railway!"}

@app.get("/second_endpoint")
def second_endpoint():
    return {"message": "This is a second endpoint!"}
