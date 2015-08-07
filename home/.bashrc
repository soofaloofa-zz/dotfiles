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

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home

# Docker
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/ksookocheff/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

CDPATH=:$HOME/Projects
PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:/opt/local/lib/mariadb/bin:$HOME/bin:$HOME/google-cloud-sdk/bin:$HOME/bdutil-1.1.0:$HOME/Projects/vdevops/src/vdevops:$PATH:$GAE_SDK_ROOT
