source $HOME/.aliases
source $HOME/.exports

# source /usr/local/bin/virtualenvwrapper.sh

# Tmux stuff

# Save ssh agent socket for using in tmux sessions
if [[ $SSH_AUTH_SOCK && $SSH_AUTH_SOCK != $HOME/.ssh/ssh_auth_sock ]]; then
    ln -sf $SSH_AUTH_SOCK ~/.ssh/ssh_auth_sock
fi

# wrapper for tmux, using socket assigned to user
function tm { tmux -2 -S /tmp/tm-`whoami` "$@"; }

source $HOME/dots/git-completion.bash
