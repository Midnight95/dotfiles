#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias nv='nvim'
alias vi='nv'
alias sudo='sudo '

# uv aliases
alias activate='source .venv/bin/activate'

export PATH=$PATH:/home/midnight/.local/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$$HOME/.local/bin

# go path
# export PATH=$PATH:/usr/local/go/bin
#  export GOROOT=/usr/local/go


. /usr/share/bash-completion/bash_completion
 __git_ps1 ()
   {
     local branch
     if branch=$(command git symbolic-ref --short HEAD 2>/dev/null); then
       printf " (%s)" "$branch"
     fi
   }

export PS1="\[$(tput bold)\]\[$(tput setaf 6)\]\[$(tput setaf 2)\][\[$(tput setaf 3)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 3)\]\h \[$(tput setaf 6)\]\W\[$(tput setaf 2)\]]\[$(tput setaf 1)\]\$(__git_ps1)\[$(tput setaf 4)\]\$ \[$(tput sgr0)\]"

[ -z "$SSH_AUTH_SOCK" ] && eval "$(ssh-agent -s)" > /dev/null
eval "$(uv generate-shell-completion bash)"
