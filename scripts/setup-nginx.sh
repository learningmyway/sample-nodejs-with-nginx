#!/bin/bash

## Setting up nginx automatically
## exit method in case of failure
die (){
    local message=${1}
    echo "${1}"
    exit 1;
}

usage(){
    echo "bash ${0} -p <Nginx Path>"
    echo "Example : bash ${0} -p  /path/to/the/code/base"
    exit 1;
}

main(){
    if [[ ${#} -ne 1 ]]; 
    then
        usage()
    fi;
    nginx_path=${1}
    cp nginx/nginx.conf ${nginx_path}
    sudo systemctl reload nginx
    sudo systemctl enable nginx 
    sudo systemctl restart nginx
}


## main start here
main ${@}