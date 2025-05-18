# Use Python 3.10 base image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Create app directory
WORKDIR /app

# Copy the entire application code
COPY . .

RUN pip install --no-cache-dir -r requirements.txt

# Run the application
CMD ["python", "app.py"]
