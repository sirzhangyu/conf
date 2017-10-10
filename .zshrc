# Path to your oh-my-zsh installation.
export ZSH=/home/zhangyu/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump git-flow github zsh-syntax-highlighting sublime sudo colored-man)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cls='clear'
alias ll='ls -la'
alias la='ls -a'
alias vi='vim'
alias grep='grep --color=auto'
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias df='df -h'
alias h='htop'
alias yd='python /home/zhangyu/Documents/ZY/ydcv/ydcv.py'
alias buildserver='ssh root@buildserver'
alias bs='ssh root@bs'
alias b521='ssh root@b521'
alias 127='sshpass -p qwer1234 ssh root@192.168.0.127 '
alias 128='sshpass -p qwer1234 ssh root@192.168.0.128 '
alias 129='sshpass -p qwer1234 ssh root@192.168.0.129'
alias 130='sshpass -p qwer1234 ssh root@192.168.0.130'
alias 131='sshpass -p qwer1234 ssh root@192.168.0.131'
alias 156='sshpass -p qwer1234 ssh root@192.168.0.156'
alias 157='sshpass -p qwer1234 ssh root@192.168.0.157'
# alias syncmanager='rsync -avz /home/zhangyu/Documents/svn/vgate_manager/ root@buildserver:zhangyu/manager/'
alias syncmanager='rsync -avz /home/zhangyu/Documents/svn/vgate_manager/ root@buildserver:zy/manager/'
# alias synccore='rsync -avz /home/zhangyu/Documents/svn/vgate_core/vgate_6.0.1-trunk root@buildserver:zhangyu/core/'
alias synccore='rsync -avz /home/zhangyu/Documents/svn/vgate_core/vgate_6.0.1-trunk root@buildserver:zy/core/'
alias syncxapi='rsync -avz /home/zhangyu/Documents/svn/vgate_xapi/ root@buildserver:zhangyu/xapi/'
alias syncoem='rsync -avz /home/zhangyu/Documents/svn/oem/vgate_6.0.0-oem/ root@buildserver:zhangyu/oem/core'
alias syncoemmanager='rsync -avz /home/zhangyu/Documents/svn/oem/vgate_manager_6.0.0-oem/ root@buildserver:zhangyu/oem/manager'
alias sync521='rsync -avz /home/zhangyu/Documents/svn/vgate-5.2.1-r4-ga root@b521:zhangyu'
alias jq='/home/zhangyu/Documents/ZY/jq-linux64'
alias myip="ifconfig eno1|grep 'inet addr'|awk -F '[ :]+' '{print \$4}'"
# alias myip="ifconfig eno1|grep 'inet addr'|sed 's/inet addr://g'|cut -d ' ' -f1"

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# oracle jdk
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"

export NVM_DIR="/home/zhangyu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export NODE_PATH="/home/zhangyu/.nvm/versions/node/v6.9.1/lib/node_modules:$NODE_PATH"

export ANDROID_HOME="/home/zhangyu/android-sdk-linux"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# OPAM configuration
# . /home/zhangyu/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
