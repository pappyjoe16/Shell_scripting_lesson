#! /bin/bash

function_local(){
    local name="$1"
    echo "Welcome to you first local variable test $name"
}

name="NIfemi"
echo "Welcome to you first local variable test $name"

function_local Joseph

echo "Welcome to you first local variable test $name"