# tab completion lists possible file
set autolist

setenv K_ORNG "%{\033[00;38;5;208m%}"
setenv K_CORAL "%{\033[00;38;5;222m%}"
setenv K_CYN "%{\033[00;38;5;81m%}"
setenv K_BLU "%{\033[00;38;5;69m%}"
setenv K_PURP "%{\033[00;38;5;141m%}"
setenv K_RED "%{\033[00;38;5;203m%}"
setenv K_WHT "%{\033[00;38;5;252m%}"
setenv K_GRN "%{\033[00;38;5;155m%}"

# change prompt
# Hybrid Theme
alias setprompt 'set prompt="K_ORNG$USER@`hostname`${K_CYN}: ${K_RED}${cwd}${K_CYN}>$K_WHT "'
setprompt
alias cd 'chdir \!* && setprompt'

# have ls use dircolors if available
if (-x /usr/bin/dircolors) then
  if ( -r ~/.dircolors) then
    eval `dircolors -c ~/.dircolors`
  else
    eval `dircolors -c`
  endif
endif
