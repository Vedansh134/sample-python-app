# Use official Python runtime as base image
FROM PYTHON:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy the requirements first
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest app code
COPY . .

# Set environment variables
ENV PORT=5000
ENV PYTHONUNBUFFERED=1

# Expose port
EXPOSE 5000

# Run the application
RUN ["python","app.py"]