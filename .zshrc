# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

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

plugins=(git colored-man-pages colorize pip python brew osx)

# Change

JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home"


#flush local DNS
alias flushdns="sudo killall -HUP mDNSResponder; say dns cleared successfully"

#change

#whats my external ip
alias ip="curl ipecho.net/plain ; echo"

#pyWhat
alias what="python /Users/robin/Development/breakables/pyWhat/pywhat/what.py"

#serve jeykll localhost:4000
alias serve="bundle exec jekyll serve --livereload"


alias openrc="code ~/.zshrc" #opens current main config file 
alias loadrc="source ~/.zshrc" #source main config file

#show PID of localhost:8080
alias 8080="lsof -n -i4TCP:8080"


#yardlights
alias yardon="curl -i -s -k -X $'POST' \
    -H $'Host: iot.meross.com' -H $'Content-Type: application/json' -H $'Accept: */*' -H $'Accept-Encoding: gzip, deflate' -H $'Connection: 
close' -H $'AppVersion: 1.0' -H $'User-Agent: MerossWidget/1.0 (iPhone; iOS 14.2; Scale/3.00)' -H $'Accept-Language: en-CA;q=1' -H 
$'Authorization: Basic 82e6f7a80579e43e8bab4e86e7e256200b66c3ad95e1f190353c1c0a4003f159' -H $'Content-Length: 555' \
    --data-binary 
$'{\"nonce\":\"ryxvdjvmncyaspgk\",\"timestamp\":\"1609708298\",\"sign\":\"6550c78e29646e4c28f0fc71656fc53e\",\"params\":\"ewogICJldmVudCIgOiB7CiAgICAiZXZlbnRUeXBlIiA6ICJERVZJQ0VfRVZFTlQiLAogICAgImV2ZW50RGF0YSIgOiB7CiAgICAgICIxNzEyMjEyNTc0OTI5NDI1MTMxMzM0Mjk4ZjEwYThkYiIgOiBbCiAgICAgICAgewogICAgICAgICAgIm5hbWVzcGFjZSIgOiAiQXBwbGlhbmNlLkNvbnRyb2wuVG9nZ2xlIiwKICAgICAgICAgICJtZXRob2QiIDogIlNFVCIsCiAgICAgICAgICAicGF5bG9hZCIgOiB7CiAgICAgICAgICAgICJ0b2dnbGUiIDogewogICAgICAgICAgICAgICJvbm9mZiIgOiAxCiAgICAgICAgICAgIH0KICAgICAgICAgIH0KICAgICAgICB9CiAgICAgIF0KICAgIH0KICB9Cn0=\"}' 
\
    $'https://iot.meross.com/v1/mqtt/event'"
    
alias yardoff="curl -i -s -k -X $'POST' \
    -H $'Host: iot.meross.com' -H $'Content-Type: application/json' -H $'Accept: */*' -H $'Accept-Encoding: gzip, deflate' -H $'Connection: 
close' -H $'AppVersion: 1.0' -H $'User-Agent: MerossWidget/1.0 (iPhone; iOS 14.2; Scale/3.00)' -H $'Accept-Language: en-CA;q=1' -H 
$'Authorization: Basic 82e6f7a80579e43e8bab4e86e7e256200b66c3ad95e1f190353c1c0a4003f159' -H $'Content-Length: 555' \
    --data-binary 
$'{\"nonce\":\"vcujhkafsjmgyzfd\",\"timestamp\":\"1609712713\",\"sign\":\"92db12aa453206c4948c5633be6d74fe\",\"params\":\"ewogICJldmVudCIgOiB7CiAgICAiZXZlbnRUeXBlIiA6ICJERVZJQ0VfRVZFTlQiLAogICAgImV2ZW50RGF0YSIgOiB7CiAgICAgICIxNzEyMjEyNTc0OTI5NDI1MTMxMzM0Mjk4ZjEwYThkYiIgOiBbCiAgICAgICAgewogICAgICAgICAgIm5hbWVzcGFjZSIgOiAiQXBwbGlhbmNlLkNvbnRyb2wuVG9nZ2xlIiwKICAgICAgICAgICJtZXRob2QiIDogIlNFVCIsCiAgICAgICAgICAicGF5bG9hZCIgOiB7CiAgICAgICAgICAgICJ0b2dnbGUiIDogewogICAgICAgICAgICAgICJvbm9mZiIgOiAwCiAgICAgICAgICAgIH0KICAgICAgICAgIH0KICAgICAgICB9CiAgICAgIF0KICAgIH0KICB9Cn0=\"}' 
\
    $'https://iot.meross.com/v1/mqtt/event'"

#Local servers
#Updated 18/06/20
alias tp="ssh robin@192.168.2.74"
alias oldmb="ssh robinlansiquot@192.168.2.152"
alias gearbotmy:sql="/usr/local/mysql/bin/mysql -u root -p"
alias python="python3"

#Manage yabai (windows manager)
alias ry="brew services restart yabai"
alias stopy="brew services stop yabai"
alias starty="brew services start yabai"

#Open iCloud from terminal
alias cloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/" 

alias opengearbot="code ~/Library/Mobile\ Documents/com~apple~CloudDocs/robinsProjects/gearbot"
alias openapi="code ~/Library/Mobile\ Documents/com~apple~CloudDocs/robinsProjects/WI_API"

function update1(){
    python /Users/robinlansiquot/Library/Mobile Documents/com~apple~CloudDocs/Robin/Development/scripts/update_daily.py
    python /Users/robinlansiquot/Library/Mobile Documents/com~apple~CloudDocs/Robin/Development/scripts/update_daily.py
}
  
#open person website in visual studio code
function ow() {
    cd ~
    cd Development
    code lansiquo.github.io
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

#simple git push
function push {
    git add .
    git commit -m "$1"
    git push
}

#ssh into ec2 instance
function ec2 {
    cd ~ 
    cd Downloads
    ssh -i "Keypair.pem" ec2-user@ec2-18-217-148-146.us-east-2.compute.amazonaws.com
}

function openyabai {
    code /Users/robin/.yabairc
}

function what() {
    python /Users/robin/Development/breakables/pyWhat/pywhat/what.py $1
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
