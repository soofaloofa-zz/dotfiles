# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi
[ -n "$PS1" ] && source ~/.bash_profile

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
