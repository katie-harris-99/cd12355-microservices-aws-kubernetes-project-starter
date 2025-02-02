# Use python runtime
FROM python:3.10-slim-buster

WORKDIR /app

COPY /analytics/ /app

# Install requirements
RUN pip install -r /app/requirements.txt

# Expose port 5153
EXPOSE 5153

# Environment variables
ENV DB_USERNAME=myuser
ENV DB_PASSWORD=mypassword
ENV DB_HOST=127.0.0.1
ENV DB_PORT=5433
ENV DB_NAME=mydatabase

# Run app
CMD python app.py