#!/bin/sh

# Start Ollama server
ollama serve &

# Wait for it to be ready
sleep 5

# Pull a smaller model to save space
ollama pull ${MODEL} || true


# Forward Railway public port to Ollama internal port
socat TCP-LISTEN:${PORT:-8080},fork TCP:localhost:11434 &

wait
