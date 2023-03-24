FROM python:3
WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip3 install --upgrade pip
COPY requirements.txt /app
RUN pip3 install -r requirements.txt /app/pip_cache
COPY . /app

EXPOSE 3000
CMD["manage.py", "runserver"]
