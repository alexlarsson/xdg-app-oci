if ! test -d app; then
    wget https://github.com/alexlarsson/xdg-app-oci/releases/download/initial/app.tar.gz
    tar xf app.tar.gz
fi

if ! test -d runtime; then
    wget https://github.com/alexlarsson/xdg-app-oci/releases/download/initial/runtime.tar.gz
    tar xf runtime.tar.gz
fi

sed "s/@UID@/`id -u`/; s/@USER@/`id -un`/;" config.json.template > config.json
sed "s/@UID@/`id -u`/; s/@USER@/`id -un`/;" runtime.json.template > runtime.json
./create_rootfs.sh
sudo rm -rf /run/opencontainer/containers/xdg-app-oci
sudo `which runc` --debug start
