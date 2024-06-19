FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt-get update

RUN apt-get install -y python3.10 python3.10-venv python3.10-dev
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN python3.10 -m pip install --no-cache-dir -r requirements.txt --break-system-packages

COPY . .
CMD ["bash", "start.sh"]
