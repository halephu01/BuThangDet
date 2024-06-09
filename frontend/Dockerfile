FROM node:20.14-alpine

WORKDIR /src/app

COPY ./package*.json .

RUN npm install

COPY . .

CMD [ "npm", "run", "dev", "--", "--host", "0.0.0.0" ]

EXPOSE 8080