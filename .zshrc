# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
alias m='mvim --remote-silent'
alias zshconf='m ~/.zshrc'
alias readlink='greadlink'

DISABLE_UNTRACKED_FILES_DIRTY="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git brew autojump vagrant vim-interaction)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

export VAGRANT_HOME=/VM/.vagrant.d

[[ -s "/Users/carsten.lenz/.gvm/bin/gvm-init.sh" ]] && source "/Users/carsten.lenz/.gvm/bin/gvm-init.sh"

eval "$(jenv init -)"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

function postCallVim
{
  osascript -e 'tell application "MacVim" to activate'
}
