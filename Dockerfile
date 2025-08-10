# Use official lightweight Python image
FROM python:3.11-slim

# Update system packages
RUN apt-get update && apt-get upgrade -y \
    && rm -rf /var/lib/apt/lists/*

# Set working directory in the container
WORKDIR /app

# Copy requirements first (to leverage Docker layer caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all application files into the container
COPY app/ /app

# Run the application
CMD ["python3", "application.py"]
