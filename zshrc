# ZSH Configuration File
# Maintainer: Jonathan T Smith <Jtsmith [DOT] tms [AT] gmail [DOT] com
# Last Changed: May25, 2016
# =============================================================================

export ZSH=/Users/Jts/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="daveverwer"
#ZSH_THEME="honukai"

#Old theme = nebirhos
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
COMPLETION_WAITING_DOTS="true"

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

plugins=(git brew brew-cask osx)

# User configuration

# added by Anaconda2 4.0.0 installer
export PATH="/Users/Jts/anaconda2/bin:$PATH"

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

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


# =============================================================================
# Copied from ~/.bashrc file
# =============================================================================

# =============================================================================
# Set Color
# =============================================================================
export CLICOLOR=1
export LSCOLORS=ExFxCxDxcxegedabagaced

# =============================================================================
# Alias Configurations
# =============================================================================

# Load a list of files into buffers in vim
#alias vim='/Applications/MacVim.app/Contents/MacOS/Vim --remote-silent'

# =================================
# Resize the terminal window
# =================================

# Small
alias ts='echo -ne "\e[8;20;65t"'

# Medium
alias tm='echo -ne "\e[8;40;90t"'

# Default
alias td='echo -ne "\e[8;45;145t"'


# Search duckduckgo.com
function duck() { open /Applications/Safari.app/ "http://www.duckduckgo.com/search?q= $1"; }

# Open vim Quick Reference in Preview
alias vimh='open /Users/Jts/Box\ Sync/Dev/**Learning\ Center**/Books/Vim/vimqrc.pdf'

# Run vim 7.4
alias vim='/usr/local/bin/vim'

# Run iPython
alias py='ipython'

# Run Python 3.5 Environment
alias py3='source activate py3'

# Deactivate Python 3.5 Environment
 alias nopy3='source deactivate'

# Add execute permission to a file
alias exe='sudo chmod +x'

# Clear Bash Log Files (*.asl)
alias dbl='sudo rm -rf /private/var/log/asl/*.asl'

# Copy current working directory to the clipboard
alias getpath='pwd | tr -d "\r\n" | pbcopy'

# Login to Shellmix.com Shell Account
alias sshc='ssh jts@shellmix.com'

# Select current working directory in LaunchBar
alias lbd='open -a LaunchBar'

# GeekNote Aliases
alias gn="python ~/Git/geeknote/geeknote/geeknote.py"

# =============================================================================
# Directory Aliases
# =============================================================================

# Change to Dev Clients Projects Directory
alias pcl='cd /Users/Jts/Box\ Sync/Dev/**Projects**/Clients'

# Change working directory to the dev Directory
alias dev='cd /Users/Jts/Box\ Sync/Dev/'

# Change working directory to the dev **Projects** Directory
alias devp='cd /Users/Jts/Box\ Sync/Dev/**Projects**'

# Change working directory to Python Learning Center Projects Directory
alias pyl='cd /Users/Jts/Box\ Sync/Dev/**Projects**/Python'

# Change working directory to Dev Learning Center directory
alias devl='cd /Users/Jts/Box\ Sync/Dev/**Learning\ Center**'


# =============================================================================
# Test Configs
# =============================================================================


