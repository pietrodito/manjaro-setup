#!/bin/bash

source ./installers/source-to-set-repo-dir-var.sh


if ! pip list | grep setuptools
then
    pip sudo install setuptools
    if ! pip list | grep setuptools
    then
        pip sudo install setuptools
    else
        echo setup is already installed.
    fi
else
    echo setup is already installed.
fi
