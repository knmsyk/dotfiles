antigen use oh-my-zsh

antigen bundle adb
antigen bundle brew
antigen bundle brew-cask
antigen bundle docker
antigen bundle docker-compose
antigen bundle gradle
antigen bundle osx
antigen bundle postgres
antigen bundle pyenv
antigen bundle rake

# antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
# antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme ys

antigen apply

bindkey '^ ' autosuggest-accept

HISTSIZE=999999
SAVEHIST=999999
