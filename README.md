# Dotfiles

## Overview

This repository contains my personal dotfiles, managed through symbolic links. It includes configurations for:
- Neovim
- Homebrew packages
- Karabiner keyboard customizations

## Installation

### Quick Install

1. Clone this repository:
   ```bash
   git clone https://github.com/alligatormonday/dotfiles.git ~/dotfiles

2. Make the installation script executable:
   ```bash
   chmod +x ~/dotfiles/install.sh

2. Run the installation script"
   ```bash
    cd ~/dotfiles
    ./install.sh

## First-Run Instructions

After running the installation script, follow these additional steps to complete the setup:

### Neovim Setup

1. Open Neovim to trigger the initial plugin installation:
   ```bash
   nvim

2. Lazy.nvim will automatically install all plugins on first launch

3. Wait for the installation to complete

4. You may need to restart Neovim once plugins are installed:
   ```bash
    :qa

### Tmux Setup

1. Start a new tmux session:
   ```bash
   tmux

2. Install tmux plugins by pressing:
   ```bash
   Ctrl+t I 

3. Wait for the plugin installation to complete

4. Source the configuration to ensure all setting are applied:
   ```bash
   Ctrl+t r

### Karabiner Setup

1. Launch Karabiner-Elements

2. Grant the necessary permissions when prompted

3. Your custom key mappings should now be loaded

4. If mappings don't appear, go to "Complex Modifications" tab and enable them manually

### Git Configuration

1. Verify your git configuration:
   ```bash
   git config --list

2. Ensure personal details and diff-so-fancy settings are applied correctly

### Homebrew Packages

1. Verify all packages were installed:
   ```bash
   brew bundle check --file=~/Desktop/Repos/dotfiles/homebrew/Brewfile

2. If any packages failed to install, run:
   ```brew bundle --file=~/Desktop/Repos/dotfiles/homebrew/Brewfile

### Troubleshooting
- If tmux plugins aren't working, install TPM manually:
  ```bash
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

- For any symlink issues, verify the links are correctly set:
  ```bash
  ls -la ~/.config/nvim
  ls -la ~/.tmux
  ls -la ~/.config/karabiner
  ls -la ~/.gitconfig

