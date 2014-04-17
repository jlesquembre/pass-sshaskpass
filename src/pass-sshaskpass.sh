#!/bin/bash

# Copyright (C) 2014 José Luis Lafuente <jl@lafuente.me>. All Rights Reserved.
# This file is licensed under the GPLv2+. Please see LICENSE for more information.

umask 077

key=$(echo "$@" | sed  -r "s/Enter passphrase for key '.*ssh\/(.*)':/\1/g")

mypass=$(pass ssh/$key)

if [[ $? != 0 ]] ; then
    echo 'Passphrase not found in password store.'
    read -p "$@" new_pass

else
    echo "$mypass"
fi
