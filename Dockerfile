FROM node:10.23-alpine

EXPOSE 8080

WORKDIR /home/node/presskit

RUN npm install -g presskit --unsafe-perm

COPY ./presskit.sh /home/node/presskit
RUN mkdir site

VOLUME /home/node/presskit/site

WORKDIR /home/node/presskit/site

ENTRYPOINT sh /home/node/presskit/presskit.sh