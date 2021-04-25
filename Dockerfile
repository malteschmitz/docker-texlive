FROM ubuntu:21.04

RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
  echo "Etc/UTC" > /etc/timezone && \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install git texlive-full -y && \
  rm -rf /var/lib/apt/lists/*
