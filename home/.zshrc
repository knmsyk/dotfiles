# zplug
zplug "sorin-ionescu/prezto"
zplug "plugins/virtualenv", from:oh-my-zsh
zplug "themes/ys", from:oh-my-zsh

if ! zplug check --verbose; then; zplug install; fi

zplug load #--verbose

# Config
HISTSIZE=999999
SAVEHIST=999999
