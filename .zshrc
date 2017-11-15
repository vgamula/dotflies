export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"

ZSH_THEME="pygmalion"
plugins=(git, pip)
setopt RM_STAR_WAIT
setopt interactivecomments

source $ZSH/oh-my-zsh.sh
export PATH=$PATH:$HOME/bin

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

func p() {
    cd ~/projects/$1
}

func iv() {
    python3 ~/bin/iv.py ./project.clj | tee /dev/tty | tr -d  '\n' | pbcopy
}

func gpr() {
    TARGET=$1 python3 ~/bin/gpr.py
}
