FROM golang:1.23-alpine AS builder

WORKDIR /app

COPY go.mod* go.sum* ./
RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o server main.go

FROM alpine:latest

RUN apk --no-cache add ca-certificates && \
    update-ca-certificates && \
    adduser -D -s /bin/sh apiuser

WORKDIR /home/apiuser

COPY --from=builder /app/server .

RUN chown apiuser:apiuser server

USER apiuser

EXPOSE 8080

CMD ["./server"]