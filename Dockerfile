FROM python:3.7

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

COPY requeriments.txt .

RUN pip install -r requeriments.txt

EXPOSE 5000

ENTRYPOINT [“python”, “app.py”]