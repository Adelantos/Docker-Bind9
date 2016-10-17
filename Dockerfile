FROM debian:8

RUN apt-get update && apt-get install -y bind9 && rm -rf /var/lib/apt/lists/* 

EXPOSE 53
EXPOSE 53/udp

CMD ["/usr/sbin/named","-g","-c","/etc/bind/named.conf","-u","bind"]

