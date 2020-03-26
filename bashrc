# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

# Path to the bash it configuration asdf asdf
export BASH_IT="/home/jimmy/.bash_it"

# Lock and Load a custom theme file.
# Leave empty to disable theming.
# location /.bash_it/themes/
export BASH_IT_THEME='sexy'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Exports /home/jimmy/local/nodejs/bin to PATH variable
export PATH=$PATH:$HOME/local/nodejs/bin:$HOME/local/python/bin

# Load Bash It
source "$BASH_IT"/bash_it.sh

# Alias for home
alias home="pushd ~ && clear"

# Alias for pushd
alias pd="pushd"

# Alias for popd
alias p="popd && clear"

# Alias for lambda directory
alias lam="pushd ~/Documents/lambda && clear && ls"

# Alias for notes directory
alias note="pushd ~/Documents/notes && clear && ls"

# Alias for pets directory
alias pet="pushd ~/Documents/pets && clear && ls"

# Alias for experiments directory
alias exp="pushd ~/Documents/experiments && clear && ls"

# Alias for experiments directory
alias pack="pushd ~/Documents/packages && clear && ls"

# Alias for bin directory
alias bin="pushd ~/bin && clear && ls"

# Alias for blog directory
alias blog="pushd ~/Documents/blog && clear && ls"

# Alias for clearing terminal
alias x="clear"

# Alias for clearing terminal then listing
alias xl="clear && ls"

# Alias for updating Manjaro
alias update="sudo pacman -Syu"

# Alias for opening directory in VS Code
alias vs="code . && clear"

# Alias for reloading terminal
alias reload="source ~/.bashrc && clear"

# Alias for shutting down computer
alias off="poweroff"

# Alias for postgresql
alias postgres="clear && sudo -u postgres psql"

# Alias for bushido template
alias bush="pushd
~/Documents/packages/create-react-app/packages/cra-template-bushido && code .
&& clear && exit"

# Alias for bushido light template
alias bushl="pushd
~/Documents/packages/create-react-app/packages/cra-template-bushido-lite &&
  code . && clear && exit"

# Alias for bushido plus template
alias bushp="pushd
~/Documents/packages/create-react-app/packages/cra-template-bushido-plus &&
  code . && clear && exit"

# Alias for bushido-strap
alias strap="pushd ~/Documents/packages/bushido-strap && code . && clear && exit"

# Alias for python
alias py="python"

# Alias for opening .vimrc file
alias vimrc="vim ~/.vimrc"

# Alias for opening .bashrc file
alias bashrc="vim ~/.bashrc"

# Alias for opening .bashrc file
alias tmuxconf="vim ~/.tmux.conf"

# Alias for opening .bashrc file
alias nscript="pushd ~/local/nodejs/bin && code . && clear"

# Alias for opening .bashrc file
alias pscript="pushd ~/local/python/bin && code . && clear"

# Alias for opening test folder
alias test="pushd ~/Documents/test && clear"

# Alias for opening bushido-strap test folder
alias teststrap="pushd ~/Documents/test/bushido-strap-test && code . && clear"

# Alias for remote ssh on raspberrypi
alias mypi="ssh pi@192.168.88.20"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

