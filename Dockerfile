# Use Python 3.10 base image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Create app directory
WORKDIR /app

# Copy requirements and install dependencies
#COPY requirements.txt .
COPY . .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application code
#COPY . .

# Expose port 5000
#EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
