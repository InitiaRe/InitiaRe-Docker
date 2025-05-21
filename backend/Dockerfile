FROM golang:alpine

WORKDIR /app

RUN apk add --no-cache git && \
    go install github.com/swaggo/swag/cmd/swag@latest

RUN git clone https://github.com/InitiaRe/InitiaRe-Backend.git .
RUN git checkout dev

COPY ./config.yaml ./config/
COPY ./entrypoint.sh ./

RUN go mod download

RUN chmod +x entrypoint.sh

EXPOSE 5001

ENTRYPOINT ["./entrypoint.sh"]
