export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
# source /usr/local/bin/virtualenvwrapper.sh

# export CFLAGS=-Qunused-arguments
# export CPPFLAGS=-Qunused-arguments
export CXXFLAGS='-std=c++11 -stdlib=libc++ -mmacosx-version-min=10.8'
export LDFLAGS=-lc++

export LANG=ru_RU.UTF-8
export PS1="`whoami`@`hostname | sed 's/\..*//'`:\w > "
export BLOCKSIZE=K;
export EDITOR=vim;
export PAGER=less;
export CLICOLOR=yes; # git colors
export TERM=xterm-256color
export PATH=./node_modules/.bin:$PATH


alias c='source ~/.bash_profile'
alias ep='vim ~/.bash_profile'
alias ev='vim ~/.vimrc'


alias e='vim'

alias l43='ssh leon43'
alias l42='ssh leon42'
alias serp='ssh beam.serp.yandex.ru'

alias jm42='jailmount leon42.yandex.ru'
alias jm43='jailmount leon43.yandex.ru'
alias jms='jailmount beam.serp.yandex.ru'

alias ss='sh s.sh'
alias bb='sh b.sh'

alias gst='git st'
alias gd='git diff'
alias gs='git show'
alias gdc='git diff --cached'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias la='ls -al'
alias ll='ls -l'

# Tmux stuff

# Save ssh agent socket for using in tmux sessions
if [[ $SSH_AUTH_SOCK && $SSH_AUTH_SOCK != $HOME/.ssh/ssh_auth_sock ]]; then
    ln -sf $SSH_AUTH_SOCK ~/.ssh/ssh_auth_sock
fi

# wrapper for tmux, using socket assigned to user
function tm { tmux -2 -S /tmp/tm-`whoami` "$@"; }

source $HOME/dots/git-completion.bash
