FROM python:3.10

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip install -r requirements.txt

# Set the FLASK_APP environment variable to the path of your Flask app
ENV FLASK_APP=./app.py
# Add a step to run the database migrations
# (Assuming you are using Flask-Migrate for database migrations)
RUN flask db upgrade

# Add a step to initialize the database if it does not exist
# (This is specific to your application setup)
# Replace the command below with the command to initialize your database
# For example, if you are using Flask and SQLAlchemy, you might run the following command:
# CMD ["python", "initialize_database.py"]
# Where "initialize_database.py" is a Python script that sets up your database if needed.

# Expose port 5000
EXPOSE 5000

# Define the command to run your Flask application
CMD ["flask", "run", "--host", "0.0.0.0"]
