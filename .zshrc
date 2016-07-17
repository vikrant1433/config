# Path to your oh-my-zsh installation.
  export ZSH=/home/vikrant/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# tx
# make sure that if a program wants you to edit 
# text, that vim is going to be there for you
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
# theme
ZSH_THEME="dst"
# txend
# ZSH_THEME="tjkirch"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

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
# plugins=(git)
# tx
# plugins
plugins=(sudo git z themes ubuntu zsh-syntax-highlighting)
# txend

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/oracle_jdk8/bin:/usr/lib/jvm/oracle_jdk8/db/bin:/usr/lib/jvm/oracle_jdk8/jre/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="/home/vikrant/software/arcanist/arcanist/bin:$PATH"

# Base16 Shell
# BASE16_SHELL="$HOME/.config/base16-gnome-terminal/base16-default.dark.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL


# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL  ]] && source $BASE16_SHELL

export WORKON_HOME=~/.py_envs
mkdir -p $WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh
export PATH="/home/vikrant/.arc/arcanist/bin/:$PATH"
source /home/vikrant/.arc/arcanist/resources/shell/bash-completion 
export PATH="$PATH:/home/vikrant/Downloads/softwares/phantomjs-2.1.1-linux-x86_64/bin"
# to add vim functionality in the zsh shell

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# personal aliases
# change directory to ~/Dropbox/notes
alias 'notes'='cd ~/Dropbox/notes/'
alias 'vim-notes'='vim ~/Dropbox/notes/vim-notes.md'
# edit linux-notes
alias 'lnt'='vim ~/Dropbox/notes/linux-notes.md'
# edit todos
alias 'todos'='vim ~/Dropbox/notes/todo.md'

# open ~/Dropbox/notes/idea-notes.md file for editing in vim
alias 'idea-notes'='vim ~/Dropbox/notes/idea-notes.md'
# open ~/Dropbox/notes/awk-notes.md file for editing in vim
alias 'awk-notes'=vim\ ~/Dropbox/notes/awk-notes.md
# open ~/Dropbox/config/ directory 
alias 'config'='cd ~/Dropbox/config/'
#=====================================================#
# tx
# general aliases
alias ':Q'=exit
alias ':q'=exit
# aliases for Tmux
alias tmux='tmux -u -2'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

# git fancy log
alias 'glg1'="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias 'glg2'="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
# get the ip address of the machine
alias 'ip'="ifconfig | grep \"inet addr:\" | sed 's/^  *//' |  cut -d' ' -f2 | cut -d':' -f2 | head -n1" 
# open ~/.zshrc with vim for editing
alias ',ez'='vim ~/.zshrc'
# open ~/.ssh/config with vim for editing
alias ',es'='vim ~/.ssh/config'
# source ~/.zshrc
alias ',sz'='source ~/.zshrc'
# source ~/.vimrc
alias ',sv'='source ~/.vimrc'
# open test file with vim
alias ',et'='vim ~/.tmux.conf'
# edit vim-notes file
# edit ~/.vimrc.local
alias ',ev'='vim ~/.vimrc.local'
# exit terminal
alias 'x'='exit'
# tar
alias 'tar'='tar -czvf'
# untar
alias 'untar'='tar -xjvf'
# delete vim swap files
alias 'ds'='rm ~/.vimswap/\* -fr'
# edit ~/.ssh/config
alias 'essh'='vim ~/.ssh/config'
# pip freeze
alias 'pf'='pip freeze'
# xclip copy 
alias 'cs'='xclip -selection clipboard'
# xclip copy to system clipboard
alias 'c'='xclip '
# xclip paste
alias 's'='screen '
# xclip paste
alias 'v'='xclip -o'
# imgur-uploader
#alias 'img'='imgur-uploader'
# scp with recursive flag
alias 'scp'='scp -r'
# my exports
###################################################
alias 'ubuntu'='lsb_release -d'
# ALL SSH ALIASES
# ssh fokat
alias 'fokat'='ssh fokat'
# ssh room
alias 'room'='ssh room'
# ssh mars
alias 'mars'='ssh -t mars "zsh"'
# ssh bt3
alias 'bt3'='ssh -t bt3 "zsh"'
# ssh bt1
alias 'bt1'='ssh -t bt1 "zsh"'
# ssh vega
alias 'vega'='ssh -t vega "zsh"'
# ssh juno
alias 'juno'='ssh -t juno "zsh"'
# ssh safestreet
alias 'safestreet'='ssh -t safestreet "zsh"'

eval $(dircolors -b $HOME/.dircolors)
# txend







# my exports
export IMGUR_API_ID="d5de70e3a4036a6"
export IMGUR_API_SECRET="f830fe6c79f063c88370689ca77f6af1906b0cfd"
export PATH="/home/vikrant/Dropbox/scritps:$PATH"
export SSHPASS="1"
export TERM=xterm-256color
