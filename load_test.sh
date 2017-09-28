#!/bin/bash
COUNTER=0
while [  $COUNTER -lt $1 ]; do
     git branch -D "test$COUNTER"
     git checkout -b "test$COUNTER"
     git commit --allow-empty -m "Dummy commit"
     git push -f origin "test$COUNTER"
     git reset HEAD^
     let COUNTER=COUNTER+1
done
