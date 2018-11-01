# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi


#ANSI color codes
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
INV="\[\033[7m\]"   # inverse background and foreground
FBLK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FYEL="\[\033[33m\]" # foreground yellow
FBLE="\[\033[34m\]" # foreground blue
FMAG="\[\033[35m\]" # foreground magenta
FCYN="\[\033[36m\]" # foreground cyan
FWHT="\[\033[37m\]" # foreground white
BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white

#256 ANSI color codes
## gruvbox colors
GRUV_ORNG="\[\033[01;38;5;208m\]"
GRUV_YLW="\[\033[01;38;5;213m\]"
GRUV_CYN="\[\033[01;38;5;108m\]"
GRUV_BLUE="\[\033[01;38;5;109m\]"
GRUV_RED="\[\033[01;38;5;167m\]"
GRUV_WHT="\[\033[01;38;5;223m\]"
GRUV_GRN="\[\033[01;38;5;142m\]"
GRUV_PRP="\[\033[01;38;5;175m\]"

## Molokai Colors
MOL_ORNG="\[\033[01;38;5;208m\]"
MOL_CORAL="\[\033[01;38;5;222m\]"
MOL_CYN="\[\033[01;38;5;81m\]"
MOL_PURP="\[\033[01;38;5;141m\]"
MOL_RED="\[\033[01;38;5;197m\]"
MOL_WHT="\[\033[01;38;5;252m\]"
MOL_GRN="\[\033[01;38;5;154m\]"

## Hybrid Colors
HYB_ORNG="\[\033[01;38;5;173m\]"
HYB_YELL="\[\033[01;38;5;221m\]"
HYB_CYN="\[\033[01;38;5;109m\]"
HYB_BLUE="\[\033[01;38;5;110m\]"
HYB_PURP="\[\033[01;38;5;139m\]"
HYB_RED="\[\033[01;38;5;167m\]"
HYB_WHT="\[\033[01;38;5;250m\]"
HYB_GRN="\[\033[01;38;5;143m\]"

## Keith Colors
K_ORNG="\[\033[01;38;5;208m\]"
K_CORAL="\[\033[01;38;5;222m\]"
K_CYN="\[\033[01;38;5;81m\]"
K_PURP="\[\033[01;38;5;141m\]"
K_RED="\[\033[01;38;5;203m\]"
K_WHT="\[\033[01;38;5;252m\]"
K_GRN="\[\033[01;38;5;155m\]"


if [ "$color_prompt" = yes ]; then
  PS1="$HC$GRUV_ORNG ${debian_chroot:+($debian_chroot)}\u\
${GRUV_BLU}: ${GRUV_RED}\w${GRUV_BLU}> $GRUV_WHT"

  PS2="$HC$GRUV_GRN&gt; $RS"
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# Set Grep Colors to gruvbox theme
export GREP_COLORS='ms=01;38;5;213:mc=01;38;5;108:fn=01;38;5;175:se=01;38;5;108:ln=01;38;5;142'

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#alias
#alias 485_labs="cd ~/Documents/school/EcEn485/labs"
#alias gvim="DISPLAY=:0 gvim"
#alias retext="DISPLAY=:0 retext"

export DISPLAY=:0
export PATH=$PATH:/usr/bin
export GREP_COLORS='ms=01;38;5;222:mc=01;38;5;222:fn=01;38;5;141:se=01;38;5;81'
