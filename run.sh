sed "s/@UID@/`id -u`/; s/@USER@/`id -un`/;" config.json.template > config.json
sed "s/@UID@/`id -u`/; s/@USER@/`id -un`/;" runtime.json.template > runtime.json
./create_rootfs.sh
sudo rm -rf /run/opencontainer/containers/xdg-app-oci
sudo `which runc` --debug start
