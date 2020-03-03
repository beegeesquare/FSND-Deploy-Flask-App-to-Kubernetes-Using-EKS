FROM python:stretch
# Copy all files in the working directory to the container folder APP
COPY . /app
# Set upn the directory for the code
WORKDIR /app
# Install the requirements needed for the app from the requirements file
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
# Define the entrypoint which will run the main app using the gunicorn WSGI server
ENTRYPOINT gunicorn -b :8080 main:APP
