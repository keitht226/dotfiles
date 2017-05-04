# tab completion lists possible file
set autolist

# gruvbox foreground colors (only works for 256 terms)
setenv FGRUV_ORNG "%{\033[00;38;5;172m%}"
setenv FGRUV_CYN "%{\033[00;38;5;108m%}"
setenv FGRUV_BLUE "%{\033[00;38;5;73m%}"
setenv FGRUV_RED "%{\033[00;38;5;203m%}"
setenv FGRUV_WHT "%{\033[00;38;5;187m%}"
setenv FGRUV_GRN "%{\033[00;38;5;106m%}"

# molokai foreground colors (only works for 256 terms)
setenv MOL_ORNG "%{\033[00;38;5;208m%}"
setenv MOL_CORAL "%{\033[00;38;5;222m%}"
setenv MOL_CYN "%{\033[00;38;5;81m%}"
setenv MOL_PURP "%{\033[00;38;5;141m%}"
setenv MOL_RED "%{\033[00;38;5;197m%}"
setenv MOL_WHT "%{\033[00;38;5;252m%}"
setenv MOL_GRN "%{\033[00;38;5;154m%}"

# change prompt
# Gruvbox Colors
#alias setprompt 'set prompt="$FGRUV_ORNG$USER@`hostname`${FGRUV_CYN}: ${FGRUV_RED}${cwd}${FGRUV_CYN}>$FGRUV_WHT "'
#setprompt
# Molokai Colors
alias setprompt 'set prompt="$MOL_ORNG$USER@`hostname`${MOL_GRN}: ${MOL_CYN}${cwd}${MOL_GRN}>$MOL_WHT "'
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
