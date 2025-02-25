set -e
VIM_DIR="$(pwd)"
MAIN_DIR="SVIM_DIR/Main"
INSTALL_PATH="/usr/local/bin/forgevim"

echo "Cleaning Vim Build"
make -C "$VIM_DIR" clea
echo "Cleaning Forge Build"
make -C "$MAIN_DIR" clean

echo "Remove of Forge exe"
if [ -f "$INSTALL_PATH" ]; then
	sudo rm "$INSTALL_PATH"
	echo "removed!"
else
	echo "ForgeVim was never installed!"
fi
echo "uninstalled!"