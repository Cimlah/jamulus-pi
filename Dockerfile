FROM debian:stable-slim

MAINTAINER Cimlah

RUN \
#Install essential packages
apt install install build-essential qt5-qmake qtdeclarative5-dev qt5-default qttools5-dev-tools libjack-jackd2-dev wget git pgrep && \

#Create directory for Jamulus files
cd / && mkdir jamulus-server && cd jamulus-server && \

#Clone Jamulus scripts and move them to proper directories
git clone https://github.com/Cimlah/jamulus-setup-scripts.git && \
cp -a jamulus-setup-scripts/into-"-usr-local-bin-"/. /usr/local/bin/ && \
cp -a jamulus-setup-scripts/into-"-jamulus-server-"/. /jamulus-server/ && \

#Change scripts' permissions to make them executable
chmod +x /jamulus-server/jamulus-*.sh && \
chmod +x /usr/local/bin/start /usr/local/bin/stop /usr/local/bin/start/restart /usr/local/bin/start/update

#Expose port for Jamulus Server
EPOSE 22124/udp