# Use Python 3.10 slim image as base
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Install required system packages for MySQL and building Python dependencies
RUN apt update && apt install -y gcc default-libmysqlclient-dev pkg-config && \
    rm -rf /var/lib/apt/lists/*

# Copy all project files into the container
COPY . .

# Install Python dependencies from requirements file
RUN pip install -r requirement.txt

# Expose port 5000 for Flask application
EXPOSE 5000

# Run the Flask application
CMD ["python","app.py"]
