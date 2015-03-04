alias docker="sudo /usr/local/bin/docker"
alias drmi="docker images -q --filter 'dangling=true' | xargs docker rmi"
