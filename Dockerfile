FROM python:3.10

# Python will not try to write .pyc files which we also do not desire
ENV PYTHONDONTWRITEBYTECODE 1

#ensures our console output looks familiar and is not buffered by Docker, which we don’t want
ENV PYTHONUNBUFFERED 1 

WORKDIR /code

COPY requirements.txt /code/

RUN pip install -r requirements.txt

COPY . /code/