# .bash_profile

for file in ~/.{git-completion.bash,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

PATH=$HOME/bin:/opt/local/bin:/usr/local/bin:$PATH
