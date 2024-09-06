FROM node:20-alpine3.19

WORKDIR /home/node/app
COPY . .
RUN npm install
EXPOSE 5175


