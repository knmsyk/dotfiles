# editor
export EDITOR='nvim'
export VISUAL=$EDITOR

# homebrew
export PATH=$HOME/homebrew/bin:$PATH
export PATH=$HOME/homebrew/sbin:$PATH

# homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

# mint
export PATH=$HOME/.mint/bin:$PATH

# gloud
export CLOUDSDK_HOME=$HOME/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk

# zplug
export ZPLUG_HOME=$HOME/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "sorin-ionescu/prezto"
zplug "lib/functions", from:oh-my-zsh
zplug "themes/ys", from:oh-my-zsh

if ! zplug check --verbose; then; zplug install; fi
zplug load #--verbose


# Config
unsetopt CORRECT
HISTSIZE=999999
SAVEHIST=999999


# anyenv
if command -v anyenv 1>/dev/null 2>&1; then
  eval "$(anyenv init -)"
fi

# git
alias a='git a'
alias b='git b'
alias c='git cached'
alias d='git d'
alias g='git g'
alias m='git commit -m'
alias p='git logdiff'
alias s='git s'
alias add='git add'
alias amend='git amend'
alias branch='git branch'
alias cached='git cached'
alias ch='git ch'
alias commit='git commit'
alias follow='git follow'
alias pop='git stash pop'
alias pull='git pull'
alias push='git push'
alias rebase='git rebase'
alias reset='git reset'
alias show='git show'
alias stash='git stash'
alias tag='git tag'

# gitignore
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;}

# neovim
alias v='nvim'

# nnn
alias n='EDITOR=nvim nnn -eHE'
export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview'
