# Use an official Python image as a base  
FROM python:3.12-slim  

# Set the working directory to /app  
WORKDIR /app  

# Copy the requirements file  
COPY requirements.txt .  

# Install the dependencies  
RUN pip install -r requirements.txt  

# Copy the application code  

COPY main.py .  
COPY main_test.py .  

# Expose the port that the application will use  
EXPOSE 8080  

# Run the command to start the application when the container starts  
CMD ["python", "main.py"]