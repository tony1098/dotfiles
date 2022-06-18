# Luke's config for the Zoomer Shell

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[white]%}[%{$fg[cyan]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[white]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/dotfiles/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Load aliases and shortcuts if existent.
[ -f "~/.config/shortcutrc" ] && source "~/.config/shortcutrc"
[ -f "~/.config/aliasrc" ] && source "~/.config/aliasrc"

# Alias
alias tl="tmux ls"
alias att="tmux attach -t"
alias cd1="cd .."
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias cd5="cd ../../../../.."

# mkcd
mkcd () {
	mkdir "$1" && cd "$1"
}

# Load zsh-syntax-highlighting; should be last.
# Load zsh-autosuggestions.
source ~/dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source ~/dotfiles/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
