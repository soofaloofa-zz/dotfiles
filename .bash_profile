# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
PATH=$HOME/bin:/opt/local/bin:/usr/local/bin:$HOME/.cabal/bin:$HOME/Library/Haskell/bin:$PATH
GAE_SDK_ROOT=/Applications/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources/google_appengine/remote_api_shell.py 
export GAE_SDK_ROOT

source ~/.git-completion.bash

# Dir colors (darwin custom)
# http://www.mactips.org/archives/2005/08/02/color-your-os-x-command-prompt/
# http://www.macosxhints.com/article.php?story=20031025162727485
export CLICOLOR=1
export LSCOLORS=FxFxCxDxBxegedabagacad

# Color the prompt
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  export PS1='[\[\033[0m\]\w]\[\033[0m\] $(__git_ps1 "(%s)")\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]'
fi

