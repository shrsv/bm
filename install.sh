#!/bin/bash

sudo cp bm_util /usr/bin/bm_util
cp bm_bash ~/.bm_bash

grep --quiet "^source ~/.bm_bash" ~/.bashrc; 

if [[ $? -ne 0 ]]; then
    echo -e "\nsource ~/.bm_bash" >> ~/.bashrc
fi

echo Installation Successful.
