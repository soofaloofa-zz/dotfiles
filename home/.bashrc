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
export GOROOT=/usr/local/go
export GOPATH=$HOME/golang/

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home
export ECLIPSE_HOME=/Applications/Eclipse.app/Contents/Eclipse

# Scala
export SCALA_HOME=/usr/local/share/scala

# Maven
export MAVEN_HOME=/usr/local/share/apache-maven
export MAVEN_OPTS="-Xmx4096m -Xss1024m -XX:MaxPermSize=128m"

# Docker (connect to default machine)
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/kevinsookocheff/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"

# Node/NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

PATH=/usr/local/bin:$HOME/bin:$HOME/google-cloud-sdk/bin:$GAE_SDK_ROOT:$GOPATH/bin:$SCALA_HOME/bin:$MAVEN_HOME/bin:$DART_HOME/bin:$PATH
