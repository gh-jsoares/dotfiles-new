[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

HISTFILE=$HOME/.zsh_history

plug "$ZDOTDIR/aliases.zsh"
plug "$ZDOTDIR/exports.zsh"

plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "zap-zsh/zap-prompt"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zap-zsh/nvm" # a bit slow

bindkey '^ ' autosuggest-accept

if command -v bat &> /dev/null; then
    alias cat="bat"
    alias catt="bat -pp"
fi
