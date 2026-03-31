# Membuat Docker image dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker image ls

# Mengubah nama image agar sesuai dengan format Github Container Registry
docker tag item-app:v1 ghcr.io/dede-irwanto/item-app:v1

# Login ke Github Container Registry
# Catatan: untuk Personal access tokens (classic) sudah saya export ke environment variable linux
echo $PASSWORD_DOCKER_HUB | docker login ghcr.io -u dede-irwanto --password-stdin

# Mengunggah image ke Github Container Registry
docker push ghcr.io/dede-irwanto/item-app:v1
