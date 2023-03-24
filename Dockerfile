FROM python:3.10
WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /app
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . /app
#ENTRYPOINT ["python3"]
#EXPOSE 8000
#CMD ["manage.py", "runserver"]
