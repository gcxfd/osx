

. ~/.bash_aliases

[ -z "$PS1" ] && return

eval "$(direnv hook zsh)"

autoload -Uz compinit
compinit
source ~/.zplugin.zsh

if [ -f ~/.bash_profile ]; then
. ~/.bash_profile
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles


setopt extended_glob
