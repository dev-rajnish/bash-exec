USR_BIN_DIR="$HOME/.local/bin"
BIN_FILE="$USR_BIN_DIR/f2g"

#sudo zypper --no-gpg-checks --no-refresh in --allow-unsigned-rpm --no-recommends -y -l  -n  gh

curl -o $BIN_FILE https://raw.githubusercontent.com/dev-rajnish/bash-exec/master/folder-to-github/folder-to-github ||
  echo Download failed!
chmod +x $BIN_FILE

echo -e ":::: >> Installed f2g at $USR_BIN_DIR \n"

echo -e ":::: >> Run \" f2g \" to push modified change \n"

echo -e ":::: >> Run \" f2g . \" for add files and push all \n"

echo -e ":::: >> Install gh if not installed \n"
