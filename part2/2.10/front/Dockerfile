FROM node:16.13.0-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY ./example-frontend/. .

RUN npm install

RUN REACT_APP_BACKEND_URL=http://127.0.0.1:8000 npm run build

RUN npm install -g serve

ENV key=value

CMD ["serve", "-s","-l", "5000","build"]
