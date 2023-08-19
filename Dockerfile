FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=1

COPY . /code
WORKDIR /code

RUN pip install -r requirements.txt

EXPOSE 5001

CMD [ "python", "app.py"]