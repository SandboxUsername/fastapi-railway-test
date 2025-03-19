# Use the official Python image (slim is smaller)
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy only requirements first (for caching)
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy your FastAPI code into /app
COPY . /app

# Expose port 8000 (or whichever you use)
EXPOSE 8000

# Use CMD (or ENTRYPOINT) to run uvicorn at container startup
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
