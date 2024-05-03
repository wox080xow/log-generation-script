#!/bin/bash

eclist=("U0101" "D9999" "N0857")
echo eclist: $eclist
echo ${eclist[@]}
lengthEclist=${#eclist[@]}
randomVal=$RANDOM
echo $lengthEclist $randomVal
#seed=$(($RANDOM % ${#eclist[@]}))
seed=$((randomVal%lengthEclist))
echo seed: $seed
ec=${eclist[$seed]}
echo ec: $ec

