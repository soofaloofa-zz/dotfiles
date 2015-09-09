# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

for file in ~/.{git-completion.bash,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# VirtualEnvWrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
source "/usr/local/bin/virtualenvwrapper.sh"

# Google Cloud Platform
export GAE_SDK_ROOT=$HOME/google-cloud-sdk/platform/google_appengine
export APPENGINE_LIB=$GAE_SDK_ROOT
export PYTHONPATH=${PYTHONPATH}:${GAE_SDK_ROOT}
source $HOME/google-cloud-sdk/path.bash.inc
source $HOME/google-cloud-sdk/completion.bash.inc

# Go
export GOPATH=$HOME/golang/

PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$HOME/bin:$HOME/google-cloud-sdk/bin:$GAE_SDK_ROOT:$GOPATH/bin:$PATH
