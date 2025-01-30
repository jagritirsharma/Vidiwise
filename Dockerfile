# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install FFmpeg and Tesseract OCR system dependencies
RUN apt-get update && apt-get install -y \
    ffmpeg \
    tesseract-ocr \
    && rm -rf /var/lib/apt/lists/*  # Clean up to reduce image size

# Copy the requirements.txt file to the container
COPY requirements.txt /app/

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files into the container
COPY . /app/

# Set environment variables (if you are using a virtual environment)
ENV PATH="/app/venv/bin:$PATH"

# Expose the port FastAPI will run on (8080)
EXPOSE 8080

# Command to run the app using Uvicorn
CMD ["uvicorn", "backend.app.main:app", "--host", "0.0.0.0", "--port", "8080"]

