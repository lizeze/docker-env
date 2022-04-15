export PATH=/root/.exa/:$PATH
alias gst='git status -sb'
alias ga='git add'
alias gc='git commit'
alias gl='git pull'
alias gp='git push'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -- | less"
alias ls='exa'
alias ll='ls -lh'
alias la='ls -alh'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion