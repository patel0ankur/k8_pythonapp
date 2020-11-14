FROM python:3.7-slim

WORKDIR /app

COPY app.py /app

RUN pip install Flask

CMD python app.py
