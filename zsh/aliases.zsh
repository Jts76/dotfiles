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
