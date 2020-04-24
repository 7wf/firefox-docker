FROM node:lts-buster

RUN apt-get update
RUN apt-get dist-upgrade -y 
RUN apt-get install --no-install-recommends -y firefox-esr

RUN adduser --disabled-password --gecos '' firefox

USER firefox
CMD ["firefox"]
