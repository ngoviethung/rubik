#!/bin/bash

echo "Git status:"
git status -s

while true; do
    read -p "Do you wish to add all files? yes or no: " yn
    case $yn in
        [Yy]* )
            echo "Git add ."
            git add .

            echo "Git commit:"
            git commit -m "update"

            echo "Git pull:"
            git pull origin master

            echo "Git push:"
            git push origin master

            break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done








