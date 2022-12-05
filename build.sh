#!/bin/zsh

if [ $(arch) != "i386" ]
then
    echo "Must be run in Rosetta"
    arch -x86_64 ./build.sh
    exit
fi

SCRIPT_DIR="${0:a:h}"
cd "$SCRIPT_DIR"

dotnet publish -c Release -r osx-x64

