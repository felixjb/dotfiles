# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/felixjb/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel9k/powerlevel9k"


# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# bgnotify
function bgnotify_formatted {
  ## $1=exit_status, $2=command, $3=elapsed_time
  [ $1 -eq 0 ] && title="zsh: it's done!" || title="Oh My Zsh!"
  bgnotify "$title -- after $3 s" "$2";
}

plugins=(
 git
 dnf
 zsh-syntax-highlighting
 zsh-autosuggestions
 bgnotify
 docker
 docker-compose
)

source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR='vim'
export VISUAL='vim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# allocate more memory to Node.js due to demanding applications
export NODE_OPTIONS=--max_old_space_size=4096

# zsh fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zsh-autosuggestions
bindkey '^ ' autosuggest-accept
bindkey '^H' autosuggest-clear

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# dev apps
alias mocha='./node_modules/.bin/mocha'

# database
alias pgdev='pgcli --host gupy5-k8s-stage-20190121.cwajuda4gdck.us-east-1.rds.amazonaws.com --username felix_batista gupy_production'

# vpn
alias vpn='cd ~/dev && sudo openvpn felix.batista.ovpn'

# linux cmds
alias sz='source ~/.zshrc'
alias c='clear'
alias e='exit'


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/felixjb/dev/gupy-webhook-service/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/felixjb/dev/gupy-webhook-service/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/felixjb/dev/gupy-webhook-service/node_modules/tabtab/.completions/sls.zsh ]] && . /home/felixjb/dev/gupy-webhook-service/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/felixjb/dev/gupy-webhook-service/node_modules/tabtab/.completions/slss.zsh ]] && . /home/felixjb/dev/gupy-webhook-service/node_modules/tabtab/.completions/slss.zsh
