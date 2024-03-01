FROM python:3.10-slim-buster



WORKDIR /app
ENV FLASK_APP run.py

COPY requirements.txt /app/

RUN python3 -m venv .venv && \
    . .venv/bin/activate

RUN pip3 install -r requirements.txt

COPY . .



CMD [ "python3","-m","flask","run","--host=0.0.0.0" ]