# Trach .zshrc
ln -sF ~/.dotfiles/.zshrc ~/.zshrc
brew install zsh

# Add to shell options
sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"

# Set as the default shell
sudo chsh -s $(which zsh)


# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
