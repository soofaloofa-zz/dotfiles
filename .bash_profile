# .bash_profile

for file in ~/.{git-completion.bash,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# User specific environment and startup programs
PATH=$HOME/bin:/opt/local/bin:/usr/local/bin:$HOME/Projects/sonar-runner-2.1/bin:$PATH

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
