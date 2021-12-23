. ~/.bash_aliases

[ -z "$PS1" ] && return

source ~/.zplugin.zsh

autoload -Uz compinit
compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
setopt extended_glob
