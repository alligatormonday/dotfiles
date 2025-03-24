#!/bin/bash

# Define the dotfiles directory
DOTFILES_DIR="$HOME/Desktop/Repos/dotfiles"

# Create necessary directories if they don't exist
mkdir -p ~/.config

# Create symbolic links
echo "Creating symbolic links..."

# Git
ln -sf "$DOTFILES_DIR/gitconfig/.gitconfig" ~/.gitconfig

# Warp
ln -sf "$DOTFILES_DIR/warp" ~/.warp

# Tmux
ln -sf "$DOTFILES_DIR/tmux/.tmux.conf" ~/.tmux.conf
mkdir -p ~/.tmux
ln -sf "$DOTFILES_DIR/tmux/plugins" ~/.tmux/plugins

# Karabiner - link the whole directory
ln -sf "$DOTFILES_DIR/karabiner" ~/.config/

# Neovim - link the whole directory
ln -sf "$DOTFILES_DIR/nvim" ~/.config/

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install packages from Brewfile
echo "Installing Homebrew packages..."
brew bundle --file="$DOTFILES_DIR/homebrew/Brewfile"

# Install TPM if not already installed
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    echo "Installing TPM..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

echo "Setup complete!"
