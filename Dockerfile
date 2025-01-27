FROM python:3.12-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends cowsay && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /code

COPY requirements.txt /code/requirements.txt
RUN pip install -r requirements.txt

COPY main.py /code/

CMD ["python", "main.py"]
