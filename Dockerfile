FROM node:16.14.0
LABEL maintainer Metaverse Security Team

COPY . /app
WORKDIR /app

RUN npm install
RUN apt-get update
RUN apt-get install -y vim


ENV HOST 0.0.0.0
ENV PORT 8000
EXPOSE 8000 2222

CMD node app.js