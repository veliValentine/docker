FROM golang:1.16-alpine as build

WORKDIR /usr/src/app

COPY ./example-backend/. .

RUN CGO_ENABLED=0 go build -o /src/go/server

FROM scratch

COPY --from=build /src/go/server /server

EXPOSE 8000

ENV PORT=8000

ENV REQUEST_ORIGIN="http://localhost:5000"

ENTRYPOINT ["/server"]