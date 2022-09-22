# Lines configured by zsh-newuser-install
export HISTFILE=~/.histfile
export HISTSIZE=1000
export SAVEHIST=1000
setopt autocd extendedglob nomatch
unsetopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install

# custom set PATH variable
export PATH=/home/reed/miniconda3/bin:/home/reed/miniconda3/condabin:/home/reed/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin:$PATH

# custom set zsh home
export ZSH=$HOME/.zsh

# Set theme
source $ZSH/themes/spaceship-prompt/spaceship.zsh-theme

# Spaceship Config
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  #hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  #vi_mode       # Vi-mode indicator
  #commented out since it doesn't work with alacritty right now
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="$"
SPACESHIP_CHAR_SUFFIX=" "

# The following lines were added by compinstall
zstyle :compinstall filename '/home/reed/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/reed/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/reed/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/reed/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/reed/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

