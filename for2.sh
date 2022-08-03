#!/bin/bash

echo "starting for문"

for i in $(ls $pwd);
do
 echo "$i"
done

echo "end for문"
