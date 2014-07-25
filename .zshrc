# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git tmux zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# 256 colors
if [ $TERM != "screen-256color" ]; then
    export TERM=xterm-256color
fi

# prevent autocorrect
alias tmux="nocorrect tmux"

# general aliases
alias ll="ls -lh --color"

# vim as editor
export EDITOR=vim

