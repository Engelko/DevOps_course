#!/bin/bash
ONE=1
NST_IM=$(( $1 + $ONE ))
NST_PS=$(( $2 + $ONE ))
NST_PSA=$(( $3 + $ONE ))

if [[ $1  -ne 0 ]]; then
echo -e "\n===========DOCKER IMAGES===================="  && docker images | head -n "$NST_IM"
else
docker images
fi

if [[ $2 -ne 0 ]]; then
echo -e "\n===========DOCKER PS===================="  && docker ps | head -n "$NST_PS"
else
docker ps
fi

if [[ $3 -ne 0 ]]; then
echo -e "\n===========DOCKER PS -A ===================="  && docker ps -a| head -n "$NST_PSA"
else
docker ps -a
fi

