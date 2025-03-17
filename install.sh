#!/bin/bash

# Create symbolic links
echo "Creating symbolic links..."
mkdir -p ~/.config/nvim
ln -sf ~/dotfiles/nvim/lua ~/.config/nvim/
ln -sf ~/dotfiles/karabiner ~/.config/

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install packages from Brewfile
echo "Installing Homebrew packages..."
brew bundle --file=~/dotfiles/homebrew/Brewfile

echo "Setup complete!"
