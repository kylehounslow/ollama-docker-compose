# AGENTS.md

## Project Overview

Docker Compose setup for running Ollama locally with optional Open WebUI interface.

## Structure

- `docker-compose.yml` - Service definitions for Ollama and Open WebUI
- `Dockerfile` - Custom Ollama image that pre-pulls llama3.2
- `.env` - Profile configuration (ollama-only or ollama-only,webui)
- `examples/openai-example.py` - Basic Python client using OpenAI SDK
- `examples/openai-with-otel-example.py` - Python client with OpenTelemetry instrumentation

## Development

- Use `uv` for Python dependency management
- Run `uv run example.py` to test the Python client
- Ollama API runs on port 11434, Open WebUI on port 8080

## Guidelines

- Keep Docker configuration minimal
- Model is baked into the image via Dockerfile
- Use OpenAI-compatible client for Python examples
