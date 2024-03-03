# Use Debian sid image as the base image
FROM debian:sid

# Append sail/sail-riscv source to /etc/apt/sources.list 
RUN echo "deb [trusted=yes] http://mirror.iscas.ac.cn/plct/distros/debian sid main" >> /etc/apt/sources.list

# Update sources and install sail-riscv
RUN apt-get update && \
    apt-get install -y sail-riscv 

# Clean cache and temporary files 
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
