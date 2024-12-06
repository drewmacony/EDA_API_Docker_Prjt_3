# Use the official Python 3.10 image as the base image
FROM python:3.10-slim

# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt file into the container
COPY app/requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Verify that the dependencies were installed correctly
RUN pip freeze

# Copy the rest of the application code into the container
COPY app/ .

# Copy the models directory into the container
COPY models /app/models

# Copy the data directory into the container
COPY data /app/data

# Expose port 8000
EXPOSE 8000

# Set the default command to run when the container starts
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]