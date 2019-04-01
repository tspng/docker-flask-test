FROM python:3.7-alpine

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY src/ /app
WORKDIR /app

EXPOSE 8000

CMD ["/usr/local/bin/gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
