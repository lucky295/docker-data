FROM centos:centos7

MAINTAINER asrini <srinivasarao.a@gmail.com>


# Set the working directory to /tmp
RUN mkdir /data
WORKDIR /data

# Copy the current directory contents into the container at /tmp
ADD download_s3_fastaq.sh /data/download_s3_fastaq.sh

ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY
ARG AWS_REGION=us-east-1
#################### Install required packages #########################
RUN yum update -y
RUN yum install -y wget curl
################## aws-cli install #####################################

RUN yum install -y epel-release
RUN yum -y install python-pip
#RUN pip install awscli --trusted-host pypi.org --trusted-host files.pythonhosted.org
RUN pip install awscli
RUN aws ecr get-login --no-include-email | bash

# Run  download_S3_fastq.sh when the container launches
#ENTRYPOINT  [“/data/download_s3_fastaq.sh”]
#CMD  “/data/download_s3_fastaq.sh”

