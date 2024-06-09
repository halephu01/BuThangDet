FROM node:20.14-alpine

WORKDIR /src/app

COPY ./package*.json .

RUN npm install

COPY . .

RUN npx tsc

CMD [ "node", "dist/index.js" ]

EXPOSE 7000