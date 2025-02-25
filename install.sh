set -e
VIM_DIR="$(pwd)"
MAIN_DIR="$SVIM_DIR/Main"
INSTALL_PATH="/usr/local/bin/forgevim"

echo "Building Vim"
make -C "$VIM_DIR"
echo "Building Forge"
make -C "$MAIN_DIR"
make cp "$VIM_DIR/src/vim" "$INSTALL_PATH"

echo "completed!"