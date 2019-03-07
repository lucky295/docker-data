#!/bin/bash
SAMPLE=$1
S3_PREFIX=s3://batch-canu
S3_DOWNLOAD=$S3_PREFIX/${SAMPLE}.fastq

echo $S3_DOWNLOAD
CURRENT=$(date +"%m-%d-%y-%H%M%S")

cd /tmp

aws s3 cp $S3_DOWNLOAD .

sleep 10

echo $CURRENT

cd /tmp

tail $SAMPLE.fastq > $CURRENT.fastq


aws s3 cp $CURRENT.fastq $S3_PREFIX/

