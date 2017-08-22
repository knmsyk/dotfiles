export LANG=ja_JP.UTF-8

# zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

# gitignore
function gi() { curl -s https://www.gitignore.io/api/$@ ;}

# rbenv
eval "$(rbenv init - zsh)"

# hub
eval "$(hub alias -s)"
