REPO="https://github.com/aaron-williamson/base16-alacritty.git"
DEST="$HOME/.config/alacritty/.aarors-williamson-colorschemes"

# Get colorschemes
mkdir -p $DEST
cd $DEST
if [ -d .git ]; then
    git pull
else
    git clone $REPO .
fi
# Create symlink at default colors location (optional)
ln -s "$DEST/colors" "$HOME/.config/alacritty/colors"
