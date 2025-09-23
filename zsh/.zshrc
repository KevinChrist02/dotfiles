# Path to the omz
export ZSH="$HOME/.oh-my-zsh"

# Default Shell Editor
export EDITOR=nvim
export VISUAL=nvim

# Go Path
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"

# Theme
ZSH_THEME="half-life"

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

# Some Aliases 

# Pacman 
alias update="sudo pacman -Syu"
alias get="sudo pacman -S"
# Tailscale
alias tss="sudo tailscale status"
alias tsd="sudo tailscale down"
alias tsu="sudo tailscale up"

eval "$(zoxide init zsh)"

source $ZSH/oh-my-zsh.sh
