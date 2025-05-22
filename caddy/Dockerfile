# Build stage
FROM node:alpine AS build

WORKDIR /app

RUN apk add --no-cache git

RUN git clone https://github.com/InitiaRe/InitiaRe-Frontend.git .

RUN corepack enable

COPY ./frontend.env ./.env

RUN yarn install
RUN yarn build

# Production stage
FROM caddy:alpine

COPY --from=build /app/build /usr/share/caddy