#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias

alias ls='ls --color=auto'
alias ll='ls -la'
alias grep='grep --color=auto'
alias nvim='nvim.appimage'
alias vol='amixer set Master'

# Auto-start sway
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec sway
fi

# Customize Path variable
export PATH=$PATH:/home/orionpax/.cargo/bin:/home/orionpax/.local/appimage:

# Promt customizations
PS1='\[\e[0;38;5;214m\]\u\[\e[0;38;5;208m\]@\[\e[0;38;5;221m\]\h\[\e[0m\]: \[\e[0;38;5;84m\]\w \[\e[0;38;5;171m\]=\[\e[0;38;5;165m\]> \[\e[0m\][\[\e[0;38;5;203m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)\[\e[0m\]] \[\e[0;38;5;208m\]\$ \[\e[0m\]'


#Add NVM to path 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
