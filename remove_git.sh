#!/bin/bash
# Author:       giper
# Email:        g.per45@gmail.com
# Date:          
# Description:
# 
#
#

usage() {
echo $1
echo "Usage to_remove.sh [filetoremove]"
exit 1
}

if [ $# -ne 1 ]; then
   usage "pls gives the file to remove"
fi

for i in $(cat $1  | sed 1,2d  | awk '{print $4}'); do git filter-branch --tag-name-filter cat --index-filter  "git rm -r --cached --ignore-unmatch $i"   --prune-empty -f -- --all;  done; 

# Then reflog and clean cache 
rm -rf .git/refs/original/ ; git reflog expire --expire=now --all ;  git gc --prune=now; git gc --aggressive --prune=now 
