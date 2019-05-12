#!/bin/bash
if [ $# -ge 1 ]
then
   git clone https://github.com/lionel-git/$1.git
else
       echo "Syntax $0 <repo>"
fi
