#!/bin/bash
FILE=$1
sed -i 's/s3:DeleteBucket/s3:CreateBucket/' $FILE
