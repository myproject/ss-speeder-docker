FROM ubuntu:14.04

MAINTAINER david <5812feel@gmail.com>
 
RUN apt-get update && \
	apt-get clean  && \
	apt-get install -y php5-dev openssh-server python-pip libnet1 libnet1-dev libpcap0.8 libpcap0.8-dev git && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/snooda/net-speeder.git net-speeder
WORKDIR net-speeder
RUN sh build.sh
RUN mv net_speeder /usr/local/bin/

COPY . /usr/local/bin/

ENV s=127.0.0.1
ENV m=rc4-md5
ENV k=123456789
ENV p=443
ENV c=1080
ENV n=50

WORKDIR /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/net_speeder

EXPOSE  443
CMD ["/usr/local/bin/run.sh"]