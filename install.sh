#!/bin/bash

sudo cp bm_util /usr/bin/bm_util
if [[ $? -ne 0 ]]; then
    echo -e "Couldn't copy bm_util to /usr/bin/. Installation failed."
    exit 1
fi
cp bm_bash ~/.bm_bash
if [[ $? -ne 0 ]]; then
    echo -e "Couldn't copy bm_bash to ~/.bm_bash. Installation failed."
    exit 1
fi

grep --quiet "^source ~/.bm_bash" ~/.bashrc; 

if [[ $? -ne 0 ]]; then
    echo -e "\nsource ~/.bm_bash" >> ~/.bashrc
fi

echo Installation Successful.
