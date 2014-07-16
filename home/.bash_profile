# .bash_profile

for file in ~/.{git-completion.bash,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Go
export GOPATH=$HOME/Projects/golang
export GOROOT=/usr/local/go

# VirtualEnvWrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
source "/usr/local/bin/virtualenvwrapper.sh"

# AppEngine
export GAE_SDK_ROOT=/Applications/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources/google_appengine/

PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PROJECT_HOME/go_appengine:$GOROOT/bin:$GOPATH/bin:$PATH

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

# The next line updates PATH for the Google Cloud SDK.
source /Users/ksookocheff/Projects/google-cloud-sdk/path.bash.inc

# The next line enables bash completion for gcloud.
source /Users/ksookocheff/Projects/google-cloud-sdk/completion.bash.inc
