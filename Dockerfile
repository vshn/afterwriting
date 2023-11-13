FROM node:20.2.0-alpine3.16 AS builder

RUN apk add git

# Install app dependencies
WORKDIR /command
COPY ["package.json", "package-lock.json", "./"]
RUN npm install

ENTRYPOINT [ "/command/node_modules/.bin/afterwriting" ]

