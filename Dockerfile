FROM ollama/ollama:latest

# Install missing tools
RUN apt-get update && apt-get install -y socat curl && rm -rf /var/lib/apt/lists/*

# Expose Ollama API port
EXPOSE 11434

# Copy startup script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Use a smaller model to avoid space errors
ENV MODEL=tinyllama

ENTRYPOINT ["/entrypoint.sh"]
