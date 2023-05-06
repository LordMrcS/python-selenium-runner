FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apt update && \
    apt-get install xvfb firefox-esr -y \
    rm -rf /var/cache/apk/*

COPY bot.py .

CMD [ "python", "bot.py" ]