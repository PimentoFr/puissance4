# set base image (host OS)
FROM python:3.8

RUN pip install rpi_ws281x
RUN pip install websockets

RUN mkdir /app

CMD python /app/test.py