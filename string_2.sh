#!/bin/bash

BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
# write your code here
ISAY=$BUFFETT
CHANGE1=${ISAY[@]/snow/foot}
CHANGE2=${CHANGE1[@]//snow/}
CHANGE3=${CHANGE2[@]/finding/getting}
INDEX=$(expr index "$CHANGE3" "w")
echo $INDEX
CHANGE4=${CHANGE3[@]::INDEX+2}
echo $CHANGE4
