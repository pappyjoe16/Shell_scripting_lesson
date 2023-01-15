#! /bin/bash

function_local() {
    local name="$1"
    echo "Welcome to you first local variable test $name"
}

usage() {
    echo "You need to provide an argument :"
    echo "usage : $0 file_name"
}

is_file_exist() {
    local file="$1" # $1 here is the argument provide to the function
    [[ -f "$file" ]] && return 0 || return 1 # here if the file does not exist
# it will return 0 and jump to "return 0"  but if file exist it will
# return 1 and jump to "return 1"
}

function_local Joseph

[[ $# -eq 0 ]] && usage # here if there is no argument passed into the script
# it will return 0 and jump to usage function but if argument is passed it will
# return 1 and jump usage

if ( is_file_exist "$1" ); then # $1 here is the argument provide to the script
    echo "file found"
else
    echo "file not found"
fi
