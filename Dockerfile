FROM python:3.7-alpine
MAINTAINER DarkPoint Security.

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt



RUN mkdir /engine
WORKDIR /engine
COPY ./engine /engine

RUN adduser -D user
USER user