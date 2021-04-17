#!/bin/bash
NST_IM=$(($1+1))
NST_PS=$(($2+1))
NST_PSA=$(($3+1))
DOC_IM=$(docker images | head -n "$NST_IM" | (wc -l))
DOC_IM_ALL=$(docker images | (wc -l))
QUAN_IM=$(("$DOC_IM"-1))
QUAN_IM_ALL=$(("$DOC_IM_ALL"-1))
DOC_PS=$(docker ps | head -n "$NST_PS" | (wc -l))
DOC_PS_ALL=$(docker ps | (wc -l))
QUAN_PS=$(("$DOC_PS" -1))
QUAN_PS_ALL=$(("$DOC_PS_ALL" -1))
DOC_PSA=$(docker ps -a| head -n "$NST_PSA" | (wc -l))
DOC_PSA_ALL=$(docker ps -a | (wc -l))
QUAN_PSA=$(("$DOC_PSA" -1))
QUAN_PSA_ALL=$(("$DOC_PSA_ALL" -1))

if [[ $1  -ne 0 ]]; then
echo -e "\n===========DOCKER IMAGES===================="  && docker images | head -n "$NST_IM"  && echo  "$QUAN_IM  <=====quantity"
else
docker images && echo "$QUAN_IM_ALL <=====quantity"
fi

if [[ $2 -ne 0 ]]; then
echo -e "\n===========DOCKER PS===================="  && docker ps | head -n "$NST_PS" && echo  "$QUAN_PS <=====quantity"
else
docker ps && echo "$QUAN_PS_ALL <=====quantity"
fi

if [[ $3 -ne 0 ]]; then
echo -e "\n===========DOCKER PS -A ===================="  && docker ps -a| head -n "$NST_PSA" &&  echo "$QUAN_PSA <=====quantity"
else
docker ps -a &&  echo "$QUAN_PSA_ALL <=====quantity"
fi
