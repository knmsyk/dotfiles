function gi() { curl -s https://www.gitignore.io/api/$@ ;}
eval "$(hub alias -s)"

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)
