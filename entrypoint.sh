#!/bin/sh
# Start Ollama server in the background
ollama serve &

# Wait for server to boot
sleep 5

# Pull the model (only first time, then cached in volume)
ollama pull llava || true

# Keep server in foreground
wait
