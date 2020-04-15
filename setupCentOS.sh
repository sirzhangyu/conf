yum install -y ncurses-devel tcl-devel libffi-devel libXt-devel gtk2-devel bzip2-devel sqlite-devel readline-devel tk-devel openssl-devel
yum install -y ruby ruby-devel lua lua-devel
yum install -y ctags git python python-devel python-pip
yum install -y perl perl-devel perl-ExtUtils-ParseXS perl-ExtUtils-CBuilder perl-ExtUtils-Embed
yum install -y gcc make ncurses ncurses-devel libevent-devel libffi-dev
yum install -y ctags git tcl-devel \
ruby ruby-devel \
lua lua-devel \
luajit luajit-devel \
python python-devel \
perl perl-devel \
perl-ExtUtils-ParseXS \
perl-ExtUtils-XSpp \
perl-ExtUtils-CBuilder \
perl-ExtUtils-Embed

yum install-y readline-devel openssl-devel bzip2-devel libsqlite3x-devel.x86_64

# vim
sudo yum remove vim-enhanced vim-common vim-filesystem vim-minimal
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
--enable-multibyte \
--enable-rubyinterp \
--enable-pythoninterp \
--enable-perlinterp \
--enable-luainterp
make & make install
sudo pip3 install neovim

# pyenv
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# go
wget --no-check-certificate https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.14.2.linux-amd64.tar.gz

# java
yum install java-1.8.0-openjdk
update-alternatives --config java

# rvm
\curl -sSL https://get.rvm.io | bash -s stable
export PATH="$PATH:/usr/local/rvm/bin"

# zsh
yum install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# python 
pyenv install 3.8.2
npm install -g yarn

# tmux
# yum install -y tmux
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
