FROM node:20.14-alpine

COPY .env .env

WORKDIR /src/app

COPY ./package*.json .

RUN npm install
RUN chmod a+x node_modules/.bin/tsc


COPY . .

RUN sudo npx tsc

CMD [ "node", "dist/index.js" ]

EXPOSE 7000