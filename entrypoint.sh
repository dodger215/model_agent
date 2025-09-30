#!/bin/sh
# Start Ollama server in the background
ollama serve &

# Wait a few seconds for the server to start
sleep 5

# Pull the model
ollama pull llava

# Keep server running in foreground
wait
