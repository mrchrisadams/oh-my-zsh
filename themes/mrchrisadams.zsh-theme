# what was the return code from the last shell command?
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# In order:
# Add the time for each command
# Add the path
# Add git prompt info
# Add double

PROMPT='%{$fg[yellow]%}%t \
%{$fg[green]%}%c \
%{$fg[red]%}$(rvm-prompt )\
$(git_prompt_info)\
%{$fg[red]%}%(!.#.»)%{$reset_color%} '

# show the exit 
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'

# put full path on the right hand side, and 
# print the return code from the last command
RPS1='%{$fg[blue]%}%~%{$reset_color%} ${return_code} '


ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}:: %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[yellow]%}"
