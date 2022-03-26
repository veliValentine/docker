FROM node:16.13.0-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY ./example-frontend/. .

RUN npm install --production && \
	REACT_APP_BACKEND_URL=http://localhost:8000 npm run build && \
	npm install -g serve && \
	adduser client -D && \
	rm src -r && \
	rm node_modules -r

USER client

CMD ["serve", "-s","-l", "5000","build"]
