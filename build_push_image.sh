# Melakukan perintah untuk proses pembuatan image dari dockerfile dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Melakukan perintah untuk melihat daftar image yang ada
docker image ls

# Melakukan perintah untuk perubahan nama image sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/firmansyahrr/item-app:v1

# Melakukan perintah untuk login ke dalam docker github packages container registry menggunakan PAT (Personal Access Token)
echo $GITHUB_PAT | docker login ghcr.io -u firmansyahrr --password-stdin

# Melakukan perintah untuk push image ke dalam github packages container registry
docker push ghcr.io/firmansyahrr/item-app:v1