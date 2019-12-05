FROM python:3.6

ENV PYTHONUNBUFFERED 1
ENV LANG=C.UTF-8
RUN mkdir code/
COPY . code/
RUN apt-get update --fix-missing
RUN apt-get install ffmpeg -y
RUN pip3 install -r code/requirements.txt