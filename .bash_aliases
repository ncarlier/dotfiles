# Prevent autocorrect for tmux
alias tmux="nocorrect tmux"

# Listing aliases
alias ll="ls -lh --color"

# Fleet
alias fl="fleetctl"
alias flrestart="fleetctl stop $@ && fleetctl start $@"

# Docker
alias docker="sudo /usr/local/bin/docker"
alias drmi="docker rmi $(docker images -q --filter 'dangling=true')"

# Misc
alias mine="sudo chown nicolas.nicolas -R"
alias serve="python -m SimpleHTTPServer"
