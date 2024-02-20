FROM node:21.6-alpine3.19

LABEL org.opencontainers.image.source=https://github.com/mikestreety/compiiile-in-docker
LABEL org.opencontainers.image.description="Docker image containing compiiile"
LABEL org.opencontainers.image.licenses=MIT

RUN mkdir /build /app
WORKDIR /build
COPY package.json ./
RUN npm install

# Create an app folder
WORKDIR /app

CMD [ "/build/node_modules/.bin/compiiile", "build" ]
