# Exercises 3.1-

## 3.1 A deployment pipeline to Heroku

Action builds image and pushes it to heroku.

[workflow](https://github.com/veliValentine/kalles-app/blob/master/.github/workflows/server-build-push-test.yml)

[Dockerfile](https://github.com/veliValentine/kalles-app/blob/master/server/Dockerfile)

## 3.2
Image clones [repository](https://github.com/veliValentine/solidabis-koodihaaste-2021). Builds image based on dockerfile on the root and pushes created image to [docker hub](https://hub.docker.com/repository/docker/velivalentine/koodihaaste).

Build image: `docker build . -t test`

Run container: `docker run -e PASSWORD=DOCKER_HUB_PASSWORD -v /var/run/docker.sock:/var/run/docker.sock test`

## 3.3

Non root users runs applications

[Server dockerfile](./3.3/server/Dockerfile)

[front dockerfile](./3.3/front/Dockerfile)

Front uses alpine linux system so used `adduser`.

## 3.4
Optimized image sizes. Combine `RUN` commands and remove useless aprts.

|             | Original | Optimized |
| ----------- | -------- | --------- |
| Front size  | 416MB    | 233MB     |
| Server size | 1.07GB   | 447MB     |

## 3.5
|             | Original | Bigger base image       | Optimized (alpine) |
| ----------- | -------- | ----------------------- | ------------------ |
| Front size  | 233MB    | 1.03GB (`FROM node:16`) | 233MB              |
| Server size | 447MB    | 1.12GB (`FROM golang`)  | 447MB              |

## 3.6

### 3.6.A Front

Build: `docker build front/ -t front`

Run: `docker run -p 80:80 front`

Open: [http://localhost](http://localhost)

### 3.6.B Server

Build: `docker build server/ -t server`

Run: `docker run -p 8000:8000 server`

Open: [http://localhost:8000](http://localhost:8000)

**SIZE 18MB**