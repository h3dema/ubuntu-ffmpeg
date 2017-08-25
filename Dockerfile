FROM docker.io/ubuntu:14.04

RUN apt-get -y update && \
    apt-get -y upgrade
    
RUN sudo add-apt-repository -y ppa:kirillshkrogalev/ffmpeg-next
RUN sudo apt-get update
RUN sudo apt-get install ffmpeg
