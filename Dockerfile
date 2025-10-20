# Use official Python 3.11 slim image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose FastAPI port
EXPOSE 8001

# Run FastAPI app
CMD ["python3", "-m", "uvicorn", "app:app", "--host=0.0.0.0", "--port=8001"]
