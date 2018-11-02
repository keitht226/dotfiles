# tab completion lists possible file
set autolist

setenv K_ORNG "%{\033[00;38;5;208m%}"
setenv K_CORAL "%{\033[00;38;5;222m%}"
setenv K_CYN "%{\033[00;38;5;81m%}"
setenv K_BLU "%{\033[00;38;5;75m%}"
setenv K_PURP "%{\033[00;38;5;141m%}"
setenv K_RED "%{\033[00;38;5;203m%}"
setenv K_WHT "%{\033[00;38;5;252m%}"
setenv K_GRN "%{\033[00;38;5;155m%}"

## gruvbox colors
setenv GRUV_ORNG "%{\033[00;38;5;172m%}"
setenv GRUV_CYN "%{\033[00;38;5;108m%}"
setenv GRUV_BLU "%{\033[00;38;5;73m%}"
setenv GRUV_PURP "%{\033[00;38;5;175m%}"
setenv GRUV_RED "%{\033[00;38;5;203m%}"
setenv GRUV_WHT "%{\033[00;38;5;223m%}"
setenv GRUV_GRN "%{\033[00;38;5;106m%}"

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

setenv GREP_COLORS 'ms=01;38;5;222:mc=01;38;5;222:fn=1;38;5;141:se=01;38;5:81'
alias grep 'grep --color=auto'
