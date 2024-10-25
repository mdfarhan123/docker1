FROM golang:1.23.1-bookworm

WORKDIR /app

COPY . .

RUN go get -u github.com/gin-gonic/gin

RUN go build -o bin main/main.go

ENTRYPOINT ["./bin"]
