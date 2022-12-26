#for file in ${ZDOTDIR:-$HOME}/.dotfiles/zsh/exports/*.zsh; do
#    source $file
#done

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/kewur/.oh-my-zsh"

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
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
plugins=(git zsh-autosuggestions)

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

alias marketplays="cd ~/workplace/MarketPlays"
alias marketplaysapp="cd ~/workplace/MarketPlays/marketplays-app"
alias workplace="cd ~/workplace"
alias descent="cd ~/workplace/Descent"
alias downloadmp3="youtube-dl -x --audio-format mp3"
alias bloomrpc="~/Programs/BloomRpc/bloomrpc"
alias calculator="bc -l"
alias nuget="mono /usr/local/bin/nuget.exe"
alias test-marketplays="dotnet test ~/workplace/MarketPlays/MarketPlays.Server.sln"
alias explorer="spacefm"

alias fix-rider-keyboard="ibus-daemon -rd"
alias ssh-marketplays-bastion="ssh -i ~/.ssh/marketplays-vpc-bastion-key.pem ec2-user@34.232.205.146"
alias ssh-marketplays-mail="ssh -i ~/.ssh/marketplays-vpc-bastion-key.pem ubuntu@52.3.54.92" 
alias screenshot="ksnip"
alias disksize="ncdu"
alias reset_docker="cd ~/workplace/MarketPlays/docker/localstack && git reset HEAD --hard && git clean -f -d && cd ~/workplace/MarketPlays"

alias image-view="eog"

alias ecsApiDesiredZero="aws ecs update-service --cluster arn:aws:ecs:us-east-1:028373766130:cluster/Api-cluster --service arn:aws:ecs:us-east-1:028373766130:service/Api-cluster/Api-service --desired-count=0"
alias ecsApiDesiredOne="aws ecs update-service --cluster arn:aws:ecs:us-east-1:028373766130:cluster/Api-cluster --service arn:aws:ecs:us-east-1:028373766130:service/Api-cluster/Api-service --desired-count=1"


alias show-big-files="sudo tree --du -h | grep G]"

alias docker_purge="docker rm -vf $(docker ps -a -q) && docker rmi -f $(docker images -a -q) && docker volume prune && docker system prune"

alias dwarffortress="/opt/linux-dwarf-pack/linux-dwarf-pack.sh"

path+=('/snap/bin')
export PATH="${PATH}:${HOME}/.local/bin/:$HOME/.dotnet/tools:/home/kewur/.dotnet"
export CHROME_BIN=/snap/bin/chromium
export MARKETPLAYS_RDS_SECRETMANAGER_ID=marketplays-development-postgres-credentials
export MARKETPLAYS_DOCKER_CONNECTION_STRING='Host=169.254.170.4;Database=MarketPlaysDb;Username=marketplays-admin-user;Password=marketplays-admin-password'
export RDS_ENDPOINT=169.254.170.4
export AWS_DEFAULT_REGION=us-east-1
export REDIS_ENDPOINT=169.254.170.6
export REDIS_PORT=6379
export API_SECRETMANAGER_ID=marketplays-api-secrets;
export IEX_PUBLISHABLE_KEY_NAME=IEXCloudPublishable
export IEX_SECRET_KEY_NAME=IEXCloudSecret
export EMBEDLY_API_KEY_NAME=EmbedlyApiKey
export MARKETPLAYS_STREAM_ENDPOINT_URL=http://localhost:5008

export IEX_CLOUD_PUBLISHABLE=pk_58cf14c63806438d9fda988f8448ff29
export IEX_CLOUD_SECRET=sk_a6b3e92c261240e3a06d49a47898f96a

export LOCALSTACK_HOST=http://169.254.170.9:4566 #used for localstack awslocal cli.

#This is a fix for Rider's keyboard locking up.
export IBUS_ENABLE_SYNC_MODE=1

export DYNAMO_ENDPOINT=http://169.254.170.9:4566

export DOTNET_ROOT=/home/kewur/.dotnet

export LD_LIBRARY_PATH="/usr/local/lib"

export DOTNET_ROLL_FORWARD_ON_NO_CANDIDATE_FX=1

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

unset npm_config_prefix # for whatever reason this nvm is complaining about this.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Workaround for AWS cli autocomplete not working https://github.com/aws/aws-cli/issues/4656
# Check for AWS CLI v2 and enable plugin if exists.
if ! [[ -x "$(command -v aws)" ]]; then
  export IS_AWS=False
  echo "### Binary for aws not installed."
else
  export IS_AWS=True
  plugins+=(aws)
fi

source ${ZSH}/oh-my-zsh.sh

# Fix to enable AWS CLI v2 completion.
if [[ IS_AWS==True ]]; then
  complete -C '/usr/local/bin/aws_completer' aws
fi
## end of AWS cli autocomplete workaround.



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#ksnip

# Load Angular CLI autocompletion.
source <(ng completion script)


eval "$(rbenv init -)"