export BASH_CONF="bashrc"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

function gitco () {
  git checkout -b $1
}

function gmerge () {
  git pull
  git merge --no-commit origin/$1
}

parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF='%f'
COLOR_USR='%F{243}'
COLOR_DIR='%F{197}'
COLOR_GIT='%F{39}'
# About the prefixed `$`: https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_03.html#:~:text=Words%20in%20the%20form%20%22%24',by%20the%20ANSI%2DC%20standard.
NEWLINE=$'\n'
# Set zsh option for prompt substitution
setopt PROMPT_SUBST
export PROMPT='${COLOR_DIR}%3d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}: '

