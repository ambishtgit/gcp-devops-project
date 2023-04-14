FROM python:3.8-slim-buster

WORKDIR /app

COPY requrements.txt requrements.txt

RUN pip3 install -r requrements.txt

COPY . .

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]