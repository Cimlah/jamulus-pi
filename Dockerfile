FROM debian:stable-slim

LABEL maintainer="Cimlah"

RUN \
apt update && apt upgrade -y && apt install -y build-essential qt5-qmake qtdeclarative5-dev qt5-default qttools5-dev-tools libjack-jackd2-dev wget git procps && apt update && apt upgrade -y && \
cd / && mkdir jamulus-server && cd jamulus-server && \
git clone https://github.com/Cimlah/jamulus-setup-scripts.git && \
cp -a jamulus-setup-scripts/into-usr-local-bin/. /usr/local/bin/ && \
cp -a jamulus-setup-scripts/into-jamulus-server/. /jamulus-server/ && \
chmod +x /jamulus-server/jamulus-*.sh && \
cd /usr/local/bin/ && chmod +x *

EXPOSE 22124/udp