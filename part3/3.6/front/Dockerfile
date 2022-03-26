FROM node:16.13.0-alpine as build

WORKDIR /usr/src/app

COPY ./example-frontend/. .

RUN npm install --production && \
	REACT_APP_BACKEND_URL=http://localhost:8000 npm run build

FROM nginx:1.19-alpine

COPY --from=build /usr/src/app/build/ /usr/share/nginx/html

EXPOSE 80