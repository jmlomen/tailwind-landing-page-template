from fastapi import FastAPI

app = FastAPI()

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/api/crops")
def get_crops():
    return [
        {"id": 1, "name": "Corn"},
        {"id": 2, "name": "Soybeans"}
    ]