FROM ollama/ollama:latest

# Expose Ollama API port
EXPOSE 11434

# Copy your entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Reset entrypoint to shell
ENTRYPOINT ["/entrypoint.sh"]
