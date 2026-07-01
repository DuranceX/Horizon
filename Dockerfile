# Use Python 3.11 slim image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install uv for faster dependency management
COPY --from=ghcr.io/astral-sh/uv:latest /uv /usr/local/bin/uv

# Build-time proxy (passed via docker-compose build args).
# Needed because `uv sync` below fetches packages from pypi.org during build,
# and runtime `environment` proxy settings do NOT apply at build time.
ARG HTTP_PROXY
ARG HTTPS_PROXY
ARG NO_PROXY

# Copy project files
COPY pyproject.toml uv.lock README.md ./
COPY src ./src
COPY data ./data
COPY .env.example .env.example

# Install dependencies
RUN uv sync --frozen --no-dev

# Create volume mount points
VOLUME ["/app/data"]

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Run the application
ENTRYPOINT ["uv", "run", "horizon"]
CMD []
