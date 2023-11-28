#! /bin/bash

fail_with_error() {
    local MSG="${1}"

    local ENDCOLOR="\e[0m"
    local RED="${ENDCOLOR}\e[31m"
    local BOLDRED="${ENDCOLOR}\e[1;31m"

    echo -e "
${BOLDRED}####### Fatal error, aborting bitbake build ######

${RED}$MSG

${BOLDRED}##################################################${ENDCOLOR}
    "
}

fail_with_error "THis is the error message"