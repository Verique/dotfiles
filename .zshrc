setopt histignorealldups sharehistory
export MY_CONFIG=~/.config/zsh
source $MY_CONFIG/env.zsh
source $MY_CONFIG/aliases.zsh


ZSH_THEME="agnoster"
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;47"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"

plugins=(git vi-mode zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

() {
    SEGMENT_SEPARATOR=$'\ue0bc'
}
source $MY_CONFIG/completion.zsh
