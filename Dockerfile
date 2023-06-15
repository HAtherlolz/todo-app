FROM golang:latest

RUN go version
ENV GOPATH=/

WORKDIR /app

# download packages
COPY go.mod go.sum ./
RUN go mod download

# install psql
RUN apt-get update
RUN apt-get -y install postgresql-client

COPY . .

# build go app
RUN go build -o app cmd/main.go

CMD ["./app"]