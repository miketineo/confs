# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --follow --glob "!.git/*"'
# export FZF_DEFAULT_COMMAND='ag --files --follow --glob --hidden .git -g'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export NVM_DIR="/Users/mtineo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# Path to your oh-my-zsh installation.
export ZSH=/Users/mtineo/.oh-my-zsh

#Silly stuff
export PATH="$HOME/.rbenv/bin:$PATH:"
eval "$(rbenv init -)"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="MIKE"

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
plugins=(git bundler osx rake ruby go)

source $HOME/.zshrc.mike
source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Alias
alias ngrok="$HOME/ngrok"
alias vimsettings="vim ~/.config/nvim/config/misc.vimrc"
alias composer=$HOME/composer
alias last_tag="git log --pretty=format:'%d' | grep 'tag:' | head -n 1"
export GOPATH=~/Code/go
export PATH=/Users/mtineo/.avn/bin:/Users/mtineo/Code/zendesk/docker-images/dockmaster/bin:/Users/mtineo/.rbenv/shims:/Users/mtineo/.rbenv/bin:/Users/mtineo/.avn/bin:/Users/mtineo/Code/zendesk/docker-images/dockmaster/bin:/Users/mtineo/.rbenv/shims:/Users/mtineo/.rbenv/bin:/Users/mtineo/.avn/bin:/Users/mtineo/Code/zendesk/docker-images/dockmaster/bin:/Users/mtineo/.rbenv/shims:/Users/mtineo/.rbenv/bin:/Users/mtineo/.avn/bin:/Users/mtineo/Code/zendesk/docker-images/dockmaster/bin:/Users/mtineo/.rbenv/shims:/Users/mtineo/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/mtineo/.avn/bin:/Users/mtineo/Code/zendesk/docker-images/dockmaster/bin:/Users/mtineo/.rbenv/shims:/Users/mtineo/.rbenv/bin:/Users/mtineo/.fzf/bin:::::/usr/local/opt/go/libexec/bin
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
# BEGIN DOCKER-IMAGES
source /Users/mtineo/Code/zendesk/docker-images/dockmaster/zdi.sh
# END DOCKER-IMAGES

export PATH="$HOME/.yarn/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
