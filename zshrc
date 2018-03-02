# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="messias"
ZSH_THEME='clean'

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias tma="tmux attach -d -t"
alias tmn="tmux new -s $(basename $(pwd))"

alias glce="cd ~/workspace/gitlab-org/gdk-ce/gitlab; tmux"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

#Comment this out to disable weekly auto-update checks

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# don't offer _bla completion
zstyle ':completion:*:functions' ignored-patterns '_*'

# don't try to be clever, zsh
unsetopt correct_all

# disable "sure you want to delete all the files"
setopt rmstarsilent

# agent forwarding for tmux/wemux
zstyle :omz:plugins:ssh-agent agent-forwarding on

# alt - -> and alt - <- ... http://stackoverflow.com/questions/12382499/looking-for-altleftarrowkey-solution-in-zsh
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

export EDITOR=vim

if [ -d "$HOME/bin" ] ; then
  export PATH="$PATH:$HOME/bin"
fi

export PATH=$PATH:/usr/local/go/bin

plugins=(git ruby pass)

# globbing with rsync/scp (not for remote locations)
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# sort it out for SCP
some_remote_commands=(scp rsync)
zstyle -e :urlglobber url-other-schema \
  '[[ $some_remote_commands[(i)$words[1]] -le ${#some_remote_commands} ]] && reply=("*") || reply=(http https ftp)'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source ~/.rvm/scripts/rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
