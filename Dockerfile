FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN python -m venv myenv
RUN source myenv/bin/activate

COPY requirements.txt .
RUN python3.10 -m pip install --no-cache-dir -r requirements.txt --break-system-packages

COPY . .
CMD ["bash", "start.sh"]
