FROM comum/pg-dispatcher:latest AS dispatcher-env

FROM node:14.14-stretch

RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get update && apt-get install -y libssl-dev

COPY --from=dispatcher-env /usr/local/bin/pg-dispatcher /usr/local/bin/

WORKDIR /usr/app

COPY . .

RUN npm install
RUN npm rebuild node-sass
CMD npm start server.js
