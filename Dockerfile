# Base image
FROM python:3.11-slim

# Working directory
WORKDIR /app

# Copy dependency list first (to leverage Docker cache)
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy project files
COPY . .

# Default command
CMD ["python", "src/train.py"]