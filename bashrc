#!/bin/sh

# source
alias srcsh="source ~/.bashrc"

# ls
alias ll="ls -lFGh"
alias la="ls -aFGh"

# grep
alias grep="egrep --color=auto"
alias rgrep="egrep -r -n --color=auto"

# mysql
export PATH=/usr/local/mysql/bin:$PATH
#alias mysql=/usr/local/mysql/bin/mysql
#alias mysqladmin=/usr/local/mysql/bin/mysqladmin
#export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/:$DYLD_LIBRARY_PATH
function my() {
  if [ "$1" == "" ] ; then
    mysql -u root
  else
    mysql -u root -D $1
  fi
}

# git
function gss() {
  git status
  echo ' '
  echo '# git stash list'
  git --no-pager stash list
}
alias gs="git status"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cd) %C(bold blue)<%an>%Creset' --abbrev-commit --date=local"
alias ga="git add -v --all"
alias gc="git commit -m"
alias gca="git commit --amend -m"
alias gm="git merge --no-ff"
alias gpull="git pull"
alias gpulls="git stash; git pull; git stash pop"
alias gpush="git push origin master"
alias gdiff="git diff -w"
alias gignored="git ls-files -o -i --exclude-standard"

# less
export PAGER=less
export LESS="--status-column --long-prompt --no-init --quit-if-one-screen --quit-at-eof -iR"

# java
export JAVA_HOME=$(/usr/libexec/java_home)

# node.js
export NODE_PATH=/usr/local/lib/node_modules

# diffmerge
alias vdiff="/Applications/DiffMerge.app/Contents/MacOS/DiffMerge -nosplash"

# development-specific shortcuts
source ~/dev/dev_bashrc.sh

# ulimit
#ulimit -n 4096
