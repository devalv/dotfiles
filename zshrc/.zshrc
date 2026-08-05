HISTFILE=~/.zsh_history
SAVEHIST=10000
HISTSIZE=10000

setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don\'t record an entry that was just recorded again.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don\'t record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don\'t write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
# User configuration

export PATH="/$HOME/.local/bin:$PATH"
export PATH="/$HOME/go/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"

# wayland blurry conf
export QT_QPA_PLATFORM="wayland;xcb"
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_SCALE_FACTOR_ROUNDING_POLICY="RoundPreferFloor"

alias df="duf -only local -only-fs btrfs,ntfs,fat32,ntfs3,ext4"
alias la="exa -l --no-permissions --group-directories-first"
alias cat="batcat"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# starship
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"
