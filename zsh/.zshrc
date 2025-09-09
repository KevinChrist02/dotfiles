# Path to the omz
export ZSH="$HOME/.oh-my-zsh"


# Theme
ZSH_THEME="robbyrussell"

# Updater
zstyle ':omz:update' mode reminder

# Library Settings
DISABLE_LS_COLORS=false
ENABLE_CORRECTION=true

# Plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Alias
alias update="sudo pacman -Syu"
alias get="sudo pacman -S"

source $ZSH/oh-my-zsh.sh
