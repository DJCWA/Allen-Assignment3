# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY app.py .

# Environment variables (optional but helpful)
ENV FLASK_APP=app.py
ENV PYTHONUNBUFFERED=1

# Expose the Flask port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]