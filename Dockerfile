FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app

RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 80
CMD ["bash", "start.sh"]
