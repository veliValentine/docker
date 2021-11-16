FROM golang:1.16

EXPOSE 8000

WORKDIR /usr/src/app

COPY ./example-backend/. .

RUN go build

ENV REQUEST_ORIGIN="http://localhost:5000"

ENV PORT=8000

CMD ["./server"]