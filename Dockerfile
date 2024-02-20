# Base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirments.txt .

# Install the project dependencies
RUN pip install -r requirments.txt

# Copy the application code into the container
COPY . .

# Expose the port the Flask application will be listening on
EXPOSE 5000

# Run the Flask application....

CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]
