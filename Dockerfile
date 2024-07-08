FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app

COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD ["bash", "start.sh"]
