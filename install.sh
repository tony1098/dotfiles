#!/usr/bin/env zsh

#################
# ZSH
#################

echo "Starting configuration"

# Fast syntax highlighting
if [[ ! -d ~/.zsh/zsh-syntax-highlighting ]]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/dotfiles/zsh/zsh-syntax-highlighting
fi

# Autosuggestions
if [[ ! -d ~/.zsh/zsh-autosuggestions ]]; then
	git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/dotfiles/zsh/zsh-autosuggestions
fi

#################
# VIM
#################
if [[ ! -d ~/.vim/vim-code-dark ]]; then
	git clone https://github.com/tomasiser/vim-code-dark.git ~/dotfiles/vim/vim-code-dark
fi

ln -sv ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -sv ~/dotfiles/vim/.vimrc ~/.vimrc
ln -sv ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -sv ~/dotfiles/cgdb/cgdbrc ~/.cgdb/cgdbrc
ln -sv ~/dotfiles/gdb/.gdbinit ~/.gdbinit

echo "Done!"
