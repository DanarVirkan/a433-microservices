# build image
docker build -t item-app:v1 .

# melihat daftar image
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker image tag item-app:v1 ghcr.io/danarvirkan/item-app:v1

# Login ke GitHub Packages
echo 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 | docker login ghcr.io -u danarvirkan --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/danarvirkan/item-app:v1