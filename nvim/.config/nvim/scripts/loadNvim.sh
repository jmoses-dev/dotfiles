#!/bin/bash

while true; do
    /opt/homebrew/bin/nvim "$@" 
    if [ $? -ne 1 ]; then
        break
    fi
done
