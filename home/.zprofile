export LANG=ja_JP.UTF-8

# antibody
source $(brew --prefix)/share/antibody.zsh

# zplug
source $HOME/.zplug/zplug

# homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

# gitignore
function gi() { curl -s https://www.gitignore.io/api/$@ ;}

# rbenv
eval "$(rbenv init - zsh)"

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# hub
eval "$(hub alias -s)"
