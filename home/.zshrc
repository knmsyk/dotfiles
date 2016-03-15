antigen use oh-my-zsh

antigen bundle adb
antigen bundle autojump
antigen bundle brew
antigen bundle brew-cask
antigen bundle capistrano
antigen bundle colorize
antigen bundle cp
antigen bundle docker
antigen bundle docker-compose
antigen bundle emacs
antigen bundle git
antigen bundle gitignore
antigen bundle gradle
antigen bundle npm
antigen bundle osx
antigen bundle pip
antigen bundle pod
antigen bundle postgres
antigen bundle pyenv
antigen bundle python
antigen bundle rake
antigen bundle rbenv
antigen bundle ruby
antigen bundle symfony2
antigen bundle web-search
antigen bundle xcode

# antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme ys

antigen apply

bindkey '^ ' autosuggest-accept

HISTSIZE=999999
SAVEHIST=999999
