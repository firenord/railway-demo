FROM node:20-alpine

WORKDIR /app

COPY app/package.json ./package.json

RUN corepack enable && yarn install

COPY app/index.js ./index.js

EXPOSE 3000

CMD ["yarn", "start"]
