FROM node:20.14-alpine

COPY .env .env

WORKDIR /src/app

COPY ./package*.json .

RUN npm install
RUN npm install -g typescript
RUN chmod a+x node_modules/.bin/tsc
RUN npm install concurrently
RUN npm install stripe

COPY . .

RUN npx tsc

CMD [ "npm", "run", "dev" ]

EXPOSE 7000