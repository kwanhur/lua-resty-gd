#! /bin/bash

exec busted . --lpath='./lib/?.lua;./lib/?/init.lua' "$@"
