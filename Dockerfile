FROM node:21.6-alpine3.19

RUN mkdir /build /app
WORKDIR /build
COPY package.json ./
RUN npm install

# Create an app folder
WORKDIR /app

CMD [ "/build/node_modules/.bin/compiiile", "build" ]
