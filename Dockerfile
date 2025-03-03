FROM python:3.8-slim-buster

WORKDIR /source

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m", "flask",  "--app", "app-api", "run", "--host=0.0.0.0"]
