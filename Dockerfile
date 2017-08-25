FROM docker.io/ubuntu:14.04

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install -y python-software-properties software-properties-common

# install avconv tools
RUN sudo apt-get install -y libav-tools

# install ffmpeg
RUN sudo add-apt-repository -y ppa:kirillshkrogalev/ffmpeg-next
RUN sudo apt-get update
RUN sudo apt-get install -y ffmpeg
