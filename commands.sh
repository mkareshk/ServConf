# common commands
alias ll='ls -lah'  # list files with detailed info
alias grep='grep --color=auto'  # colorize grep output
alias c='clear'  # clear the terminal screen

# git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gd='git diff'
alias gb='git branch'
alias glog='git log --oneline --decorate --graph --all'

# system update
alias update='sudo apt update && sudo apt upgrade -y'
alias clean='sudo apt autoremove && sudo apt clean'

# edit .bashrc
alias sb='source ~/.bashrc'  # apply the changes

# functions

mkcd() {
    mkdir -p "$1"
    cd "$1"
}

extract() {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1     ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}
