distribution=$(. /etc/os-release;echo $ID$VERSION_ID) 
curl -L https://nvidia.github.io/libnvidia-container/$distribution/libnvidia-container.list -o /etc/apt/sources.list.d/nvidia-container-toolkit.list
sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' /etc/apt/sources.list.d/nvidia-container-toolkit.list
apt-get update