export LANG=en_US.UTF-8

ZSH_THEME="afowler"
plugins=(git fzf z)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
