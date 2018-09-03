FROM telegraf:latest

RUN apt-get -qq -y update && \
apt-get -qq -y install curl && \
curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
apt-get install -qq -y nodejs && \
npm install --global speed-test



