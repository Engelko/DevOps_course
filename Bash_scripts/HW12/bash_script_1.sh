#!/bin/bash
FILE=$1
sed -i 's/s3:DeleteBucket/s3:CreateBucket/' $FILE
sed -i '/arn:aws:s3:::backup-test*/a \        "arn:aws:s3:::hw12-bucket" ' $FILE
