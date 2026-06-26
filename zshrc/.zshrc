# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker golang python)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/$HOME/.local/bin:$PATH"
export PATH="/$HOME/go/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"

alias df="duf -only local -only-fs btrfs,ntfs,fat32"
alias la="exa -l --no-permissions --group-directories-first"
alias cat="batcat"
alias vim="hx"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# starship
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"
