
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"

if [ -e ~/.aliases.sh ]
then
  source ~/.aliases.sh
fi

if [ -x ~/git-utils/git-completion.bash ]; then
	source ~/git-utils/git-completion.bash
fi
if [ -x ~/git-utils/git-flow-completion.bash ]; then
	source ~/git-utils/git-flow-completion.bash
fi
if [ -x ~/git-utils/git-prompt.bash ]; then
	source ~/git-utils/git-prompt.bash
fi

export GIT_PS1_SHOWDIRTYSTATE=1
PS1='\n\[\033[0;38m\]\u@\h \w \[\033[0;32m\]$(__git_ps1 "%s") \n\[\033[0;38m\]> '

if [ -e ~/.bash_profile.local ]
then
  source ~/.bash_profile.local
fi

eval "$(rbenv init -)"
export PATH=./bin:$PATH
export EDITOR=vim
[[ -s /usr/local/etc/profile.d/autojump.sh ]] && . /usr/local/etc/profile.d/autojump.sh

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
