# === Stage 1: Build stage ===
FROM python:3.13-slim AS builder

# Set Working directory
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install --prefix=/install -r requirements.txt

# Copy app source
COPY . .

# === Stage 2: Runtime stage ===
FROM python:3.13-slim

# Set environment variables for better Python behavior in containers
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PATH="/install/bin:$PATH"

WORKDIR /app

# Copy installed Python packages from builder stage
COPY --from=builder /install /install

# Copy application code
COPY --from=builder /app .

# Expose port 
EXPOSE 5000

# Run app 
CMD ["python", "app.py"]
