#!/bin/sh

# Start Ollama server (it listens on 0.0.0.0 by default inside Docker)
ollama serve &

# Wait for server to start
sleep 5

# Pull LLaVA into the persistent directory (mounted to /root/.ollama/models)
ollama pull llava || true

# Keep container running
wait
