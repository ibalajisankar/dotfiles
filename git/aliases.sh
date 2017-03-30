unalias gca >/dev/null 2>/dev/null #remove oh-my-zsh git plugin alias
alias gca="git_commit_all"
alias gcap="git_commit_all_push"
alias gcd="git clone --depth=1"
## Git commands

# Based on https://gist.github.com/codejets/519d3287229ed075a025
alias gaa='git add . && git commit --amend'
alias gc="git commit -m"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias ga="git amend"
alias diff='git diff'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin'
alias pull='git pull'
alias fp='fetch && pull'
alias gmm='git merge master'
alias gmghp='git merge gh-pages'
alias recent='git for-each-ref --sort=-committerdate refs/heads/'
alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"
alias gita="git add . && git commit -a --amend"
# Update Remote url
alias gru="git remote set-url"

# Undo a `git push`
alias undopush="git push -f origin HEAD^:master"
alias grmb="git push origin --delete"

# git root
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'

alias ginit='git init && gi osx,node && gca "Init Commit"'
