if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Theme
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git alias-finder bgnotify copyfile dircycle sudo web-search zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Alias commands
alias vim="nvim"
alias cat="bat"
alias imgcat="wezterm imgcat"
alias ls="exa -F --icons"
alias lsla="exa -F --icons -lah"
alias lst="exa -T -F --icons"

# Alias config
alias config-vim="cd ~/.config/nvim/ && vim"
alias config-waybar="cd ~/.config/waybar/ && vim"
alias config-rofi="cd ~/.config/rofi/ && vim"
alias config-hypr="cd ~/.config/hypr/ && vim"

# Alias config
alias config-zsh="vim ~/.zshrc"
alias config-dunst="vim ~/.config/dunst/dunstrc"
alias config-wezterm="vim ~/.config/wezterm/wezterm.lua"

# bun completions
[ -s "/home/igber/.bun/_bun" ] && source "/home/igber/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
