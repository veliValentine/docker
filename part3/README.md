# Exercises 3.1-

## 3.1 A deployment pipeline to Heroku

Action builds image and pushes it to heroku.

[workflow](https://github.com/veliValentine/kalles-app/blob/master/.github/workflows/server-build-push-test.yml)

[Dockerfile](https://github.com/veliValentine/kalles-app/blob/master/server/Dockerfile)

## 3.2
Image clones [repository](https://github.com/veliValentine/solidabis-koodihaaste-2021). Builds image based on dockerfile on the root and pushes created image to [docker hub](https://hub.docker.com/repository/docker/velivalentine/koodihaaste).

Build image: `docker build . -t test`

Run container: `docker run -e PASSWORD=DOCKER_HUB_PASSWORD -v /var/run/docker.sock:/var/run/docker.sock test`