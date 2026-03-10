FROM python:3.10-slim

WORKDIR /app

RUN apt update && apt install -y gcc default-libmysqlclient-dev pkg-config && \
    rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip install -r requirement.txt

EXPOSE 5000

CMD ["python","app.py"]
