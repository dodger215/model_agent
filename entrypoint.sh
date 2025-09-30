#!/bin/sh

# Use Render's persistent disk for models
MODEL_DIR=/mnt/data/ollama_models

# Ensure folder exists
mkdir -p $MODEL_DIR

# Use Render's PORT env variable or fallback to 11434
PORT=${PORT:-11434}

# Start Ollama server in background using the persistent model directory
ollama serve --host 0.0.0.0 --port $PORT --models $MODEL_DIR &

# Wait a few seconds for the server to start
sleep 5

# Pull LLaVA model (only downloads if not already present)
ollama pull llava --models $MODEL_DIR || true

# Keep server running
wait
