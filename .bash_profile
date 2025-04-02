export BASH_CONF="bash_profile"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# navigate
alias cdcode='cd ~/Desktop/code/'


# convenience search
alias gr='grep -i -r --exclude-dir=node_modules --exclude-dir=.next --exclude-dir=.yarn --exclude-dir=.docusaurus'
alias fn='find . -name'

# Git
alias gstat='git status'
alias gdiff='git diff'
alias gpatch='git apply'
alias gapply='git apply'
alias gcommit='git add -A; git commit -m'
alias gstat='git status'
alias ginfo='echo `git branch | grep \* | cut -d '"'"' '"'"' -f2` `git log -1 --pretty="%h %ci"`'
alias gco='git checkout'
alias gdiff='git diff'
alias gdiffs='git diff --staged'
alias gpd='git diff origin/main...HEAD'
alias glog='git log'
alias glogskim='git log --author="skim" --pretty=tformat: --numstat | gawk '"'"'{ add += $1; subs += $2; loc += $1 - $2 } END { printf "added lines: %s removed lines: %s total lines: %s\n", add, subs, loc }'"'"''
alias gstash='git stash'
alias gup='git pull --no-rebase'
alias gpull='git pull --no-rebase'
alias gpush='git push; echo `git branch | grep \* | cut -d '"'"' '"'"' -f2` `git log -1 --pretty="%h %ci"`'
alias gpushforce='git push -o ignore-max-file-modifications'
alias gswitch='git checkout --track origin/'
alias grevert='git checkout HEAD '
alias revertall='git reset --hard'
alias gb='git branch'
alias pd='git diff origin/main...'
alias pds='git --no-pager diff origin/main... --name-only'
