# =============================================================================
# Alias Configurations
# =============================================================================

# Load a list of files into buffers in vim
#alias vim='/Applications/MacVim.app/Contents/MacOS/Vim --remote-silent'

# Add a tab title ex. "title python 2"

#setup terminal tab title
#function title {
#    if [ "$1" ]
#    then
#        unset PROMPT_COMMAND
#        echo -ne "\033]0;${*}\007"
#    else
#        export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
#    fi
#}
#title

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

# Run Python 2.7 Environment
alias py2='tabset -t Python2.7 -c py2 && source activate py2'

# Deactivate Python 2.7 Environment
alias nopy='tabset -t $PWD -c nopy && source deactivate'

# Add execute permission to a file
alias exe='sudo chmod +x'

# Clear Bash Log Files (*.asl)
alias dbl='sudo rm -rf /private/var/log/asl/*.asl'

# Copy current working directory to the clipboard
alias getpath='pwd | tr -d "\r\n" | pbcopy'


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

# Change working directory to the dev **Projects** Directory
alias devc='cd /Users/Jts/Box\ Sync/Dev/**Projects**/Clients'

# Change working directory to Python Learning Center Projects Directory
alias pyl='cd /Users/Jts/Box\ Sync/Dev/**Projects**/Python'

# Change working directory to Dev Learning Center directory
alias devl='cd /Users/Jts/Box\ Sync/Dev/**Learning\ Center**'


# =============================================================================
# ssh Shell Logins
# =============================================================================
#
# Login to Shellmix.com Shell Account
alias sshg='ssh grimm@67.169.246.83 -p 2222'
