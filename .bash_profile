# .bash_profile

for file in ~/.{git-completion.bash,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH

source ~/.rvm/scripts/rvm
