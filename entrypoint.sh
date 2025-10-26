#!/bin/sh
set -e

# Start Ollama server
ollama serve &

# Wait for server to start
sleep 5

# Pull model (optional)
ollama pull llava || true

# Forward Railway public port to Ollama internal port
socat TCP-LISTEN:${PORT:-8080},fork TCP:localhost:11434 &

wait
