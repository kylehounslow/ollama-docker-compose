FROM ollama/ollama:latest

# Set an environment variable for the model you want
ENV MODEL=llama3.2

# Start Ollama server in the background, wait for it to be ready, pull the model, then kill the server
RUN /usr/bin/ollama serve & \
    sleep 5 && \
    ollama pull $MODEL && \
    pkill ollama

# Default command to start the server normally when the container runs
ENTRYPOINT ["/usr/bin/ollama"]
CMD ["serve"]

