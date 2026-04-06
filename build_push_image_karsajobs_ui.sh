# Perintah untuk build Docker image  dengan nama ghcr.io/dede-irwanto/karsajobs-ui:latest
docker build -t ghcr.io/dede-irwanto/karsajobs-ui:latest .

# Perintah untuk Login ke Github Container Registry
# Catatan: untuk Personal access tokens (classic) sudah saya export ke environment variable linux
echo $PASSWORD_DOCKER_HUB | docker login ghcr.io -u dede-irwanto --password-stdin

# Perintah untuk push image ke Github Container Registry
docker push ghcr.io/dede-irwanto/karsajobs-ui:latest

