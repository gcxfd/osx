. ~/.asdf/asdf.sh
source "$HOME/.cargo/env"
export LC_ALL=zh_CN.UTF-8  
export LANG=zh_CN.UTF-8

export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH=/usr/local/opt/curl/bin:`go env GOPATH`/bin:$HOME/.bin:$PATH
export PATH="/usr/local/opt/llvm/bin:$PATH"
export ELECTRON_MIRROR="https://npm.taobao.org/mirrors/electron/"

alias vim=nvim
alias vi=nvim
alias ls=exa
alias t="~/git/mac/t/t.py -t ~/git/rmw"

export EDITOR=vi
export GOPROXY=https://goproxy.io,direct

export ANDROID_HOME=$HOME/Library/Android/sdk

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export PATH="$HOME/.pub-cache/bin:$HOME/.deno/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
