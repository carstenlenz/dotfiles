# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

alias m='mvim --remote-silent'
alias zshconf='m ~/.zshrc'
alias readlink='greadlink'
alias gradle='gw'

# Emacs aliases - too complicated by the way
alias Emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias emacs='emacsc -n'
alias e='emacsclient -n'
alias ew='emacsclient'
alias ecw='emacsc'

DISABLE_UNTRACKED_FILES_DIRTY="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git brew autojump vagrant vim-interaction)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions

export EDITOR='vim'

export VAGRANT_HOME=/VM/.vagrant.d

export PATH="/Users/carsten.lenz/bin:$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$PATH:$HOME/.jenv/bin"
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

function postCallVim
{
  osascript -e 'tell application "MacVim" to activate'
}

eval "$(rbenv init -)"
[[ -s "/Users/carsten.lenz/.gvm/bin/gvm-init.sh" ]] && source "/Users/carsten.lenz/.gvm/bin/gvm-init.sh"
eval "$(jenv init -)"
