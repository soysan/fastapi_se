FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt
