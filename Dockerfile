FROM node:20.14-alpine

COPY .env .env

WORKDIR /src/app

COPY ./package*.json .

RUN npm install
RUN npm install -g typescript
RUN chmod a+x node_modules/.bin/tsc


COPY . .

RUN npx tsc

CMD [ "node", "dist/index.js" ]

EXPOSE 7000