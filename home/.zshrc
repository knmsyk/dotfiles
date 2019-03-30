# homebrew
export PATH=$HOME/homebrew/bin:$PATH


# zplug
export ZPLUG_HOME=$HOME/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "sorin-ionescu/prezto"
zplug "plugins/virtualenv", from:oh-my-zsh
zplug "themes/ys", from:oh-my-zsh

if ! zplug check --verbose; then; zplug install; fi

zplug load #--verbose


# Config
unsetopt CORRECT
HISTSIZE=999999
SAVEHIST=999999


# homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)


# rbenv
eval "$(rbenv init - zsh)"


# gitignore
function gi() { curl -s https://www.gitignore.io/api/$@ ;}
