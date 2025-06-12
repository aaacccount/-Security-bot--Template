FROM python:3.10-slim

# نصب ابزارهای امنیتی
RUN apt-get update && apt-get install -y \
    nmap \
    net-tools \
    curl \
    git \
    && apt-get clean

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]
