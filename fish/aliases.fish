# Quick Editting
alias ea "vim ~/.config/fish/functions/aliases.fish"
alias ef "vim ~/.config/fish/config.fish"
alias ev "vim ~/.vimrc"

# Quick Sourcing of files
alias soa "source ~/.config/fish/functions/aliases.fish"
alias sof "source ~/.config/fish/config.fish"
alias sov "source ~/.vimrc"

# Common Commands
alias v "vim"
alias c "clear"

# Git
alias g "git"
alias gd "git diff"
alias ga "git add"
alias gb "git branch"
alias gf "git fetch"
alias gp "git push"

alias gaa "git add -A"
alias gca "git commit -a -m"
alias gcm "git commit -m"
alias gst "git status"
alias gco "git checkout"

alias gss "git stash"
alias gssp "git stash pop"
alias gssl "git stash list"

# navigation
alias .. "cd ../"
alias ... "cd ../../"
alias .... "cd ../../../"
alias ..... "cd ../../../../"

# DB stuff because I am lazy
alias devdb "mysql -u homestead -p echosec"
alias migrate "php artisan migrate --seed -v"
