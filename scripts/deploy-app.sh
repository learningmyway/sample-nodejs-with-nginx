#!/bin/bash
## This script will start my-app nodejs server from a speific folder

script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd );

## exit method in case of failure
die (){
    local message=${1}
    echo "${1}"
    exit 1;
}
main (){
    if [[ -f ${script_dir}/../package.json ]];
    then
        # Changing to project root
        cd ${script_dir}/../
        yarn install || die "[FATAL] Error executing yarn install command!!!"
        yarn start || die "[FATAL] Cannot start the server using yarn start command!!!"
    else
        die "[FATAL] Not able to find ${script_dir}/../package.json hence failing!!!"
    fi;    
}

## main starts here
main 
