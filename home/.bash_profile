# .bash_profile

for file in ~/.{git-completion.bash,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$HOME/go_appengine:$PATH

# VirtualEnvWrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
source "/usr/local/bin/virtualenvwrapper.sh"

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

