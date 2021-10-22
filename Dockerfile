FROM python:3.8

WORKDIR /web-app

ENV LISTEN_PORT = 5000
EXPOSE 5000

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN pip install Flask-SQLAlchemy

COPY ./env ./env

CMD ["python", "./env/app.py"]