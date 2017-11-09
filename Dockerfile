# Dockerfile for OpenVAS (http://www.openvas.org/)
FROM fedora

LABEL maintainer="mattias.ohlsson@inprose.com"

RUN dnf -y install openvas-* redis bzip2 which findutils sqlite procps-ng nmap mingw32-nsis texlive-latex-bin-bin openssh gnutls-utils net-tools alien nikto ike-scan net-snmp-utils openldap-clients
RUN sed -i 's|# unixsocket |unixsocket |' /etc/redis.conf
RUN sed -i 's|daemonize no|daemonize yes|' /etc/redis.conf
RUN sed -i 's|port 6379|port 0|' /etc/redis.conf
RUN mkdir -p /var/lib/openvas/openvasmd/gnupg

COPY startd update /usr/sbin/

CMD ["/usr/sbin/startd"]
