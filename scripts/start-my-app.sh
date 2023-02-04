#!/bin/bash
## Runing deployapp from the codebase
## Need to place the app inside /usr/bin/

## exit method in case of failure
die (){
    local message=${1}
    echo "${1}"
    exit 1;
}

usage(){
    echo "bash ${0} -p <Code's absolute Path>"
    echo "Example : bash ${0} -p  /path/to/the/code/base"
    exit 1;
}

main(){
    if [[ ${#} -ne 1 ]]; 
    then
        usage()
    fi;
    code_path=${1}
    bash ${code_path}/scripts/deploy-app.sh || die "[FATAL] Error executing command ${1}/scripts/deploy-app.sh"
}


## main start here
main ${@}