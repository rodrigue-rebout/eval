# test.py

from fastapi import FastAPI
from fastapi.testclient import TestClient

# Création d'une application FastAPI simple pour les tests
app = FastAPI()

@app.get("/status")
async def status():
    return {"message": "OK"}

client = TestClient(app)

def test_status():
    response = client.get("/status")
    assert response.status_code == 200
    assert response.json() == {"message": "OK"}

