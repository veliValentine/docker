FROM golang:1.16-alpine

EXPOSE 8000

WORKDIR /usr/src/app

COPY ./example-backend/. .

RUN go build && \
	adduser server -D

ENV REQUEST_ORIGIN="http://localhost:5000"

ENV PORT=8000

USER server

CMD ["./server"]