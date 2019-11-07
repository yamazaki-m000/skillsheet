FROM ubuntu:18.04

WORKDIR /work
RUN apt-get update \
 && apt-get install -y wget \
   gnupg \
 && sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
 && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
 && apt-get install -y google-chrome-stable
