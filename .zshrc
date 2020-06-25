export ZSH="/Users/morgan.galvin/.oh-my-zsh"
ZSH_THEME="avit"
plugins=(git xcode)

source $ZSH/oh-my-zsh.sh

# Git
alias ga="git add ."
alias gc="git commit"
alias gp="git push"
alias gs="git status"

alias sqlz="sequelize-cli"
alias py="python3"
alias pp="pip3"
alias cls='printf "\033c"'
alias sw='code ~/Desktop/scratchPaper.js'
alias sr='node ~/Desktop/scratchPaper.js'
alias swp='code ~/Desktop/scratchPaper.py'
alias srp='python3 ~/Desktop/scratchPaper.py'
function ne { node -e  "console.log($1)"; }
export -f ne

function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

bash /etc/motd.sh

