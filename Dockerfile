FROM golang:1.17
WORKDIR /go/delivery
COPY . .
RUN go build -o server main.go
CMD [ "./server" ]
