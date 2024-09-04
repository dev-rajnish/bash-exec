USR_BIN_DIR="$HOME/.local/bin"
BIN_FILE="$USR_BIN_DIR/f2g"

CONFIGdir="$HOME/.config/f2g"
CONFIGfile="$CONFIGdir/f2g.conf"


#sudo zypper --no-gpg-checks --no-refresh in --allow-unsigned-rpm --no-recommends -y -l  -n  gh

curl -s -w "\n" -o $BIN_FILE https://raw.githubusercontent.com/dev-rajnish/bash-exec/master/f2g/folder-to-github && sync || echo Download failed!
chmod +x $BIN_FILE

echo Installed f2g at $USR_BIN_DIR

mkdir -p $CONFIGdir

if [ ! -f "$CONFIGfile" ]; then 

    curl -s -w "\n" -o $CONFIGfile https://raw.githubusercontent.com/dev-rajnish/bash-exec/master/f2g/f2g.cfg && sync || echo Download failed!
 
fi 



# Check if the username was read correctly
echo "You entered: $1"

# Safeguard: If the username wasn't entered, notify and exit
if [ -z "$1" ]; then
    echo "No username entered. Add it at $CONFIGfile"
fi

# Append or modify the USER_NAME_CONFIG line in the configuration file
if grep -q "^USER_NAME_CONFIG=" "$CONFIGfile"; then
    echo "Updating USER_NAME_CONFIG in the config file..."
    sed -i "s/^USER_NAME_CONFIG=.*/USER_NAME_CONFIG=\"$1\"/" "$CONFIGfile"
else
    echo "Adding USER_NAME_CONFIG to the config file..."
    echo "USER_NAME_CONFIG=\"$1\"" >> "$CONFIGfile"
fi

echo -e "\nAdded your user name in $CONFIGfile\n"

echo -e "run f2g to push modified change \n"

echo -e "Run : f2g . for add files and push all\n"

echo -e "Install gh if not installed\n"

