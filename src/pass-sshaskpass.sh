#!/bin/bash

# Copyright (C) 2014 José Luis Lafuente <jl@lafuente.me>. All Rights Reserved.
# Contributor  Frederik Schwan <frederik dot schwan at linux dot com>
# This file is licensed under the GPLv2+. Please see LICENSE for more information.

key=$(echo "$1" | sed -r "s/.*\/([^':]+)'?:\s*$/\1/g")

mypass=$(pass ssh/$key)

if [[ $? != 0 ]] ; then
	zenity --error --text="Passphrase not found in password store. Please store it with 'pass insert ssh/$key'"
else
    echo "$mypass"
fi

exit
