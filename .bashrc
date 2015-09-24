source $HOME/.alias

#Traditional PS1
#export PS1="\[\033[01;32m\]\u \[\033[01;34m\]\w \n\$\[\033[00m\] "

#New PS1 include the branch
export PS1="\[\033[01;32m\]\u@\h \[\033[01;34m\]\w\[\033[36m\]\$(__git_ps1)\[\033[0m\]\n$ "
#export PS1="\n\[\033[32m\]\u \[\033[33m\]\w\[\033[36m\]\$(__git_ps1)\[\033[0m\]\n$ "

export EDITOR="vim"
