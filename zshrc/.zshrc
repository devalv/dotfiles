# Настройки истории
setopt HIST_IGNORE_ALL_DUPS    # Игнорировать дубликаты при добавлении (НЕ удалять старые)
setopt HIST_IGNORE_SPACE       # Не сохранять команды, начинающиеся с пробела
setopt HIST_REDUCE_BLANKS      # Удалять лишние пробелы перед сохранением
setopt SHARE_HISTORY           # Делиться историей между сессиями

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# User configuration

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"

# wayland blurry conf
#export QT_QPA_PLATFORM="wayland;xcb"
#export QT_AUTO_SCREEN_SCALE_FACTOR=1
#export QT_SCALE_FACTOR_ROUNDING_POLICY="RoundPreferFloor"

alias history='history -10000'
alias df="duf -only local -only-fs btrfs,ntfs,fat32,ntfs3,ext4"
#alias la="exa -l --no-permissions --group-directories-first"
#alias ls="exa -l --group-directories-first"
alias cat="batcat"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

export PATH="$HOME/.npm-global/bin:$PATH"

# starship
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:$HOME/.lmstudio/bin"
# End of LM Studio CLI section
