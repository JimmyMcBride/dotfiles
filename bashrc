# Alias for home
alias home="pushd ~ && clear"

# Alias for bin directory
alias bin="pushd ~/bin && clear && ls"

# Alias for clearing terminal then listing
alias x="clear && ls"

# Alias for clearing terminal
alias c="clear"

# Alias for updating Deb-based OS
alias update="sudo apt-get update && sudo apt-get upgrade"

# Alias for reloading .bashrc in current terminal
alias reload="source ~/.bashrc && clear"

# Alias for shutting down computer
alias off="poweroff"

# Alias for postgresql
alias pg="clear && sudo -u postgres psql"

# Alias for opening .vimrc file
alias vimrc="nvim ~/.config/nvim/init.vim"

# Alias for opening .bashrc file
alias bashrc="nvim ~/.bashrc"

# Alias for opening .bashrc file
alias tmuxconf="nvim ~/.tmux.conf"

# export LS_COLORS="di=1;36:ex=32:fi=33"
alias ls="ls --color"

# Alias for listing all
alias la="ls -a"

alias ..="cd .. && clear && ls"
alias ...="cd ../.. && clear && ls"
alias ....="cd ../../.. && clear && ls"
alias .....="cd ../../../.. && clear && ls"
