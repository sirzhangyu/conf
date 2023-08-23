ZSH_PROFILE_PATH="$HOME/.oh-my-zsh/custom"

alias cls='clear'
alias ll='ls -la'
alias la='ls -a'
# alias vim='/usr/local/bin/vim'
alias vi='vim'
alias grep='grep --color=auto'
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias df='df -h'
alias h='htop'
alias fd='fdfind'
# alias yd='ydcv'
alias install='sudo apt install -y'
alias update='sudo apt update -y'
alias upgrade='sudo apt upgrade -y'
alias root='sudo su -'
alias yd='python $HOME/Documents/ZY/ydcv/src/ydcv.py'
alias at='tmux attach-session -t zy'
alias zsh.zy="vim ${ZSH_PROFILE_PATH}/zy.zsh"
alias zsh.source="source $HOME/.zshrc"
alias vimrc="vim $HOME/.vimrc"
alias docker_clean_img="docker images | grep '<none>' | xargs docker rmi"
alias gac="git add . && git ci --amend --no-edit && git push -f"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# export PATH="$PATH:$(yarn global bin)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# golang
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$(go env GOPATH)/bin"
export GO111MODULE=on
export GOPROXY="https://goproxy.cn/"

# FZF
export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build} --type f --hidden --follow"
export FZF_DEFAULT_OPTS='--preview "bat --style=numbers --color=always --line-range :500 {}"'
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:/usr/local/rvm/bin"

# source ~/.cargo/env

# sdkman
source "/$HOME/.sdkman/bin/sdkman-init.sh"

export debug=true
