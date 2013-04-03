# .bashrc

# User specific aliases and functions
# # Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

alias l="less"
alias ll="ls -l"
alias la="ls -a"
alias lt="ls -lt"
alias lS="ls -lS"
alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -i"
alias grep="grep --color=auto"
alias cd..="cd .."
