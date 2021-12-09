FROM python:slim

RUN useradd -d /usr/src/app -m -s /bin/bash app

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN apt update && apt upgrade -y && apt autoremove -y && \
    apt install -y apache2-utils easy-rsa vim vim-common && \
    pip install --no-cache-dir -r requirements.txt

COPY ./src .

USER app

CMD [ "python", "./main.py" ]

#HEALTHCHECK CMD curl --fail http://localhost:8080/healthcheck || exit 1

EXPOSE 8080/tcp