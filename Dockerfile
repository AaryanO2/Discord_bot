FROM golang:1.22-alpine as Build

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o main ./

EXPOSE 8081

CMD [ "./main" ]