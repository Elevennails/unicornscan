FROM debian:latest
RUN apt-get update && apt-get -y upgrade && apt-get -y install gnupg
RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys ED444FF07D8D0BF6
RUN apt-get update
RUN apt-get install -y unicornscan
CMD unicornscan
