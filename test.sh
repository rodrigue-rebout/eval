#!/bin/bash

# Script pour tester l'API FastAPI
curl -X POST http://localhost:8000/chat -H "Content-Type: application/json" -d '{"prompt":"What is a LLM?"}'
