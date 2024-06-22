FROM node:20.14-alpine

COPY .env .env

WORKDIR /src/app

COPY ./package*.json .

RUN npm install
RUN npm i concurrently
RUN npm i stripe

COPY . .

RUN npx tsc

CMD [ "npm", "run", "dev" ]

EXPOSE 7000