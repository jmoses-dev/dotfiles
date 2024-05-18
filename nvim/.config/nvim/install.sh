
# Installing Nerd font for Icons etc.
echo "Installing Nerd-font"
# brew tap homebrew/cask-fonts && brew install --cask font-hack-nerd-font
echo "Finished installing nerd-font"
echo "Set nerd-font to your terminal font"

packages=(
  neovim,
  stow,
  ripgrep
)

for package in "${packages[@]}"; do
  brew install "$package"
done   
