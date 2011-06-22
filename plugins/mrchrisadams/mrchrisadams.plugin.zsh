# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#

alias hs="cd ~/headshift-code"
alias thingsync="cd Library/Application\ Support/Cultured\ Code/Things"

function edit-unmerged () {
 mvim `git ls-files --unmerged | cut -f2 | sort -u`
}

function add-unmerged () {
 git add `git ls-files --unmerged | cut -f2 | sort -u`
}

# set local paths for mysql et al
export PATH="$HOME/bin:$HOME/Developer/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
