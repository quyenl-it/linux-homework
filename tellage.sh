#!/bin/bash
# Scriptname: tellage

read -p "How old are you? " age

if (( age < 0 || age > 120 ))
then
    echo "You are not a real person!"
    exit 1
fi

if (( age >= 0 && age < 13 ))
then
    echo "You still have some of the best years of your life ahead."
elif (( age < 20 ))
then
    echo "Important years to learn"
elif (( age < 30 ))
then
    echo "Time to find a potential mate!!"
elif (( age < 40 ))
then
    echo "You are probably changing diapers"
else
    echo "Sorry I asked"
fi
