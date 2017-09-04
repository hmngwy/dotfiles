# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source ~/.dotfiles_local/env

# Theme
ZSH_THEME="bullet-train/bullet-train"

# Bullet Train Theme Customization
BULLETTRAIN_TIME_SHOW=false
BULLETTRAIN_DIR_FG='black'
BULLETTRAIN_GIT_BG='250'
BULLETTRAIN_DIR_EXTENDED=0

prompt_hostname() {
  prompt_segment black grey "$(hostname -s)"
}

BULLETTRAIN_PROMPT_ORDER=(
  hostname
  dir
  virtualenv
  git
  context
)

# Tab-completion interface
COMPLETION_WAITING_DOTS="true"

# TMUX Plugin config
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOQUIT=false

# ZSH VI Mode Config
export KEYTIMEOUT=1
MODE_INDICATOR="%{$fg_bold[red]%}%{$fg[red]%}[NORMAL]%{$reset_color%}"

# OMZ Plugins
plugins=(virtualenv tmux git zsh-syntax-highlighting)

# User configuration

# Encoding
export LC_ALL=en_US.UTF-8

# Language
export LANG=en_US.UTF-8

# Avoid duplicates in your bash history
export HISTCONTROL="erasedups:ignoreboth"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Virtualenv variables
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Require virtualenv for pip, reduce garbage on global
export PIP_REQUIRE_VIRTUALENV=true

if [ -n "$VIRTUAL_ENV" ]; then
  source "$VIRTUAL_ENV/bin/activate"
fi

# Finally load OMZ, Aliases, then local settings
source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases
source ~/.dotfiles_local/zshrc
