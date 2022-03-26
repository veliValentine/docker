FROM node:16.13.0-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY ./example-frontend/. .

RUN npm install

RUN REACT_APP_BACKEND_URL=http://localhost/api npm run build

RUN npm install -g serve

RUN adduser client -D

USER client

CMD ["serve", "-s","-l", "5000","build"]
