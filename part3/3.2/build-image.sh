gitRepository=https://github.com/veliValentine/solidabis-koodihaaste-2021.git

export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0

echo "\nBuilding"
docker build $gitRepository -t velivalentine/koodihaaste -q
echo "\nLogin"
echo $PASSWORD | docker login -u velivalentine --password-stdin
echo "\nPushin"
docker push velivalentine/koodihaaste:latest