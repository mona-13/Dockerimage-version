# Use a base Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD ["python", "app.py"]
