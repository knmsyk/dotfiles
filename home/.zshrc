# Load antibody
antibody bundle < "$HOME/.zsh/bundles.txt"

# Add plugins
zplug "plugins/adb", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/brew-cask", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/gradle", from:oh-my-zsh
zplug "plugins/postgres", from:oh-my-zsh
zplug "plugins/pyenv", from:oh-my-zsh
zplug "plugins/rake", from:oh-my-zsh
zplug "themes/ys", from:oh-my-zsh

# Install plugins
if ! zplug check --verbose; then; zplug install; fi

# Load plugins
zplug load --verbose

# Config
HISTSIZE=999999
SAVEHIST=999999
