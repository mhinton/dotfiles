#!/bin/bash

if [ $# == 0 ]; then
  mvim
else
  mvim --servername $(basename $(pwd)) \
       --remote-tab-silent "$@" 1>/dev/null 2>&1
fi
