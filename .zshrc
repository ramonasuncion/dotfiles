export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
  zsh-autosuggestions
  zsh-history-substring-search
  zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"

alias ..='cd ../'
alias ...='cd ../../'

export PATH="$HOME/.local/bin:$PATH"

bindkey -M viins  "${terminfo[kcuu1]}" history-substring-search-up
bindkey -M viins  "${terminfo[kcud1]}" history-substring-search-down
bindkey -M vicmd  "${terminfo[kcuu1]}" history-substring-search-up
bindkey -M vicmd  "${terminfo[kcud1]}" history-substring-search-down
bindkey -v

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'
setopt PROMPT_SUBST
PROMPT='%F{white}%~%F{241}${vcs_info_msg_0_}%F{reset} $ '
