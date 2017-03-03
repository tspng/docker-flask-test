FROM python:3.6

RUN mkdir /data
WORKDIR /data

COPY src/ .
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python3", "/data/app.py"]
