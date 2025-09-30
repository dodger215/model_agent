FROM ollama/ollama:latest

RUN ollama pull llava

EXPOSE 11434

CMD ["ollama", "serve"]