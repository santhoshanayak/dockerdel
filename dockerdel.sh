#!/bin/bash -x
if [ $(docker image inspect $1 --format="dockerimagefound") == "dockerimagefound" ]; 
then 
        echo $?
        docker rm -f todo-dev;docker image rm todo-dev
fi
