FROM node:12.16.3-alpine3.11 AS builder

RUN apk add git

# Install app dependencies
WORKDIR /command
COPY ["package.json", "package-lock.json", "./"]
RUN npm install

ENTRYPOINT [ "/command/node_modules/.bin/afterwriting" ]

