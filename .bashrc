source $HOME/.alias

#Traditional PS1
#export PS1="\[\033[01;32m\]\u \[\033[01;34m\]\w \n\$\[\033[00m\] "

#New PS1 include the branch
export PS1="\[\033[01;32m\]\u@\h \[\033[01;34m\]\w\[\033[36m\]\$(__git_ps1)\[\033[0m\]\n$ "
#export PS1="\n\[\033[32m\]\u \[\033[33m\]\w\[\033[36m\]\$(__git_ps1)\[\033[0m\]\n$ "

export EDITOR="vim"

#Uncomment bottom line if the terminal does not show vim-airline colour
#export TERM='xterm-256color'


# https://github.com/nvbn/thefuck
eval $(thefuck --alias)

# Start terminal with screen
if [ $TERM != "screen" ] && [ $TERM != "screen-256color" ] ; then
	screen
fi

# To Setup:
# 1) Save the .git-completion.bash file found here:
#    https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
# 2) Add the following lines to your .bash_profile, be sure to reload (for
# example: source ~/.bash_profile) for the changes to take effect:

# Git branch bash completion
if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash

	# Add git completion to aliases
	__git_complete ck _git_checkout
	__git_complete branch _git_branch
	__git_complete merge _git_merge
	__git_complete pull _git_pull
	__git_complete push _git_push
	__git_complete gits _git_status
	__git_complete gita _git_add
	__git_complete gitl _git_log
	__git_complete commit _git_commit
	__git_complete gmv _git_mv
fi
