# Dockerfile for OpenVAS (http://www.openvas.org/)
FROM fedora

LABEL maintainer="mattias.ohlsson@inprose.com"

RUN dnf -y install openvas-* redis bzip2 which findutils sqlite procps-ng nmap mingw32-nsis texlive-latex-bin-bin openssh gnutls-utils
RUN sed -i 's|# unixsocket |unixsocket |' /etc/redis.conf
RUN mkdir -p /var/lib/openvas/openvasmd/gnupg
