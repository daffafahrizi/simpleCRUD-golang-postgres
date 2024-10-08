FROM golang:1.23-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY . .

# Change output binary name
RUN go build -o /golang-postgre-docker-workouts

EXPOSE 8080

# Change CMD to point to the new binary
CMD ["/golang-postgre-docker-workouts"]
