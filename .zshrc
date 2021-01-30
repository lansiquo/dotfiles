# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.

export ZSH="/Users/robinlansiquot/.oh-my-zsh"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avit"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable 3will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#Robin's Profile
#Updated June 18th 2020
alias openrc="code ~/.zshrc" #opens current main config file 
alias loadrc="source ~/.zshrc" #source main config file

#show PID of localhost:8080
alias 8080="lsof -n -i4TCP:8080"

#yardlights
alias yardon="curl -i -s -k -X $'POST' \
    -H $'Host: iot.meross.com' -H $'Content-Type: application/json' -H $'Accept: */*' -H $'Accept-Encoding: gzip, deflate' -H $'Connection: close' -H $'AppVersion: 1.0' -H $'User-Agent: MerossWidget/1.0 (iPhone; iOS 14.2; Scale/3.00)' -H $'Accept-Language: en-CA;q=1' -H $'Authorization: Basic 82e6f7a80579e43e8bab4e86e7e256200b66c3ad95e1f190353c1c0a4003f159' -H $'Content-Length: 555' \
    --data-binary $'{\"nonce\":\"ryxvdjvmncyaspgk\",\"timestamp\":\"1609708298\",\"sign\":\"6550c78e29646e4c28f0fc71656fc53e\",\"params\":\"ewogICJldmVudCIgOiB7CiAgICAiZXZlbnRUeXBlIiA6ICJERVZJQ0VfRVZFTlQiLAogICAgImV2ZW50RGF0YSIgOiB7CiAgICAgICIxNzEyMjEyNTc0OTI5NDI1MTMxMzM0Mjk4ZjEwYThkYiIgOiBbCiAgICAgICAgewogICAgICAgICAgIm5hbWVzcGFjZSIgOiAiQXBwbGlhbmNlLkNvbnRyb2wuVG9nZ2xlIiwKICAgICAgICAgICJtZXRob2QiIDogIlNFVCIsCiAgICAgICAgICAicGF5bG9hZCIgOiB7CiAgICAgICAgICAgICJ0b2dnbGUiIDogewogICAgICAgICAgICAgICJvbm9mZiIgOiAxCiAgICAgICAgICAgIH0KICAgICAgICAgIH0KICAgICAgICB9CiAgICAgIF0KICAgIH0KICB9Cn0=\"}' \
    $'https://iot.meross.com/v1/mqtt/event'"
    
alias yardoff="curl -i -s -k -X $'POST' \
    -H $'Host: iot.meross.com' -H $'Content-Type: application/json' -H $'Accept: */*' -H $'Accept-Encoding: gzip, deflate' -H $'Connection: close' -H $'AppVersion: 1.0' -H $'User-Agent: MerossWidget/1.0 (iPhone; iOS 14.2; Scale/3.00)' -H $'Accept-Language: en-CA;q=1' -H $'Authorization: Basic 82e6f7a80579e43e8bab4e86e7e256200b66c3ad95e1f190353c1c0a4003f159' -H $'Content-Length: 555' \
    --data-binary $'{\"nonce\":\"vcujhkafsjmgyzfd\",\"timestamp\":\"1609712713\",\"sign\":\"92db12aa453206c4948c5633be6d74fe\",\"params\":\"ewogICJldmVudCIgOiB7CiAgICAiZXZlbnRUeXBlIiA6ICJERVZJQ0VfRVZFTlQiLAogICAgImV2ZW50RGF0YSIgOiB7CiAgICAgICIxNzEyMjEyNTc0OTI5NDI1MTMxMzM0Mjk4ZjEwYThkYiIgOiBbCiAgICAgICAgewogICAgICAgICAgIm5hbWVzcGFjZSIgOiAiQXBwbGlhbmNlLkNvbnRyb2wuVG9nZ2xlIiwKICAgICAgICAgICJtZXRob2QiIDogIlNFVCIsCiAgICAgICAgICAicGF5bG9hZCIgOiB7CiAgICAgICAgICAgICJ0b2dnbGUiIDogewogICAgICAgICAgICAgICJvbm9mZiIgOiAwCiAgICAgICAgICAgIH0KICAgICAgICAgIH0KICAgICAgICB9CiAgICAgIF0KICAgIH0KICB9Cn0=\"}' \
    $'https://iot.meross.com/v1/mqtt/event'"

#Local servers
#Updated 18/06/20
alias lyr.local="ssh robin@192.168.2.78"
alias gearbotmy:sql="/usr/local/mysql/bin/mysql -u root -p"

#Manage yabai (windows manager)
alias ry="brew services restart yabai"
alias stopy="brew services stop yabai"
alias starty="brew services start yabai"

#Open iCloud from terminal
alias cloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/" 

alias opengearbot="code ~/Library/Mobile\ Documents/com~apple~CloudDocs/robinsProjects/gearbot"
alias openapi="code ~/Library/Mobile\ Documents/com~apple~CloudDocs/robinsProjects/WI_API"
  

#Push to git in 1 line with custom message from initialized repo
function push() {
    git add .
    git commit -a -m "$1"
    git push 
}

fucntion ow(){
    cd lansiquo.github.io
    code .
    }

#update yabai payload
function updatescript { 
sudo yabai --uninstall-sa
sudo yabai --install-sa
}

#Open files in VS Code with the alias code
function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

#Stop yabai, update yabai, restart yabai
function updateyabai {
    brew services stop yabai
    brew upgrade yabai
    brew services start yabai   
}

#Allow for moving spacees
function yscript {
    sudo yabai --load-sa
    yabai -m signal --add event=dock_did_restart action="sudo yabai --load-sa"
}


