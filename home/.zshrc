# homebrew
export PATH=$HOME/homebrew/bin:$PATH
export PATH=$HOME/homebrew/sbin:$PATH


# homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)


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



# anyenv
if command -v anyenv 1>/dev/null 2>&1; then
  eval "$(anyenv init -)"
fi


# gitignore
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;}

# neovim
alias vim='nvim'
