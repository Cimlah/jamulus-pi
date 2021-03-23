FROM debian:stable-slim

LABEL maintainer="Cimlah"

RUN \
apt update && apt upgrade -y && apt install -y build-essential qt5-qmake qtdeclarative5-dev qt5-default qttools5-dev-tools libjack-jackd2-dev wget git pcregrep && apt update && apt upgrade && \
cd / && mkdir jamulus-server && cd jamulus-server && \
git clone https://github.com/Cimlah/jamulus-setup-scripts.git && \
cp -a jamulus-setup-scripts/into-"-usr-local-bin-"/. /usr/local/bin/ && \
cp -a jamulus-setup-scripts/into-"-jamulus-server-"/. /jamulus-server/ && \
chmod +x /jamulus-server/jamulus-*.sh && \
chmod +x /usr/local/bin/start /usr/local/bin/stop /usr/local/bin/start/restart /usr/local/bin/start/update

EXPOSE 22124/udp