# Exercises 2.1-2.10

## 2.1

[in ./2.1](./2.1/)

Run: `docker compose up`

## 2.2
[in ./2.2](./2.2/)

Run: `docker compose up`

## 2.3
[in ./2.3](./2.3/)

Run: `docker compose up`

## 2.4
[in ./2.4](./2.4/)

Run: `docker compose up`

## 2.5
Original [docker compose](2.5/docker-compose.yml)

Run: 
1. `git clone https://github.com/docker-hy/material-applications.git`
2. `cd ./material-applications/scaling-exercise`
3. `docker compose up --scale compute=2`
4. Open [http://localhost:3000/](http://localhost:3000/) and click button

Line 3 starts docker compose and scales container `compute` 

## 2.6
[in ./2.6](./2.6/)

Run: `docker compose up`

## 2.7
[in ./2.7](./2.7/)

Run: `docker compose up`

## 2.8
[in ./2.8](./2.8/)

Run: `docker compose up`

## 2.9
[in ./2.9](./2.9/)

Run: `docker compose up`

Db is saved at `~db`

## 2.10
[in ./2.10](./2.10/)

Run: `docker compose up`

[compose](./2.10/docker-compose.yml)

[server dockerfile](./2.10/server/Dockerfile)

[client dockerfile](./2.10/front/Dockerfile)

### Changes
- removed ports in compose file
- added `REACT_APP_BACKEND_URL=http://localhost/api` env variable to client compose
