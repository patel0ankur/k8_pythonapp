FROM python:3.7-slim

WORKDIR /app

COPY app.py /app

RUN pip install Flask gunicorn

  # Run the web service on container startup. Here we use the gunicorn
  # webserver, with one worker process and 8 threads.
  # For environments with multiple CPU cores, increase the number of workers
  # to be equal to the cores available.
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 app:app
