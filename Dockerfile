FROM python:3.6

RUN mkdir /data
WORKDIR /data

COPY src/ .
RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["/usr/local/bin/gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
