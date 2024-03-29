#!/bin/bash

#WHAT THIS SCRIPT DOES: Adds and commits any changes to the Linux setup git repo, and then pushes to the github repo 

echo "Welcome to the git program for Linux Setup!"

echo "-------------------------"

git status

echo "-------------------------"

read -re -n 1 -p 'Does everything look OK?: '

case $REPLY in
    Y | y)
        git add .
        ;;
    
    N | n | q)
        exit
        ;;

    *)
        echo -e "Invalid option"
        exit
        ;;
esac

echo -e "Enter a commit message"

read mycommit

git commit -m "$mycommit"

echo "-------------------------"

git push -u origin master

echo "-------------------------"

git status

echo "-------------------------"

echo -e "Leaving the git program"

exit

