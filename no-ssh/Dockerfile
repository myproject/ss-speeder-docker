# ss-with-net-speeder

FROM ubuntu:14.04.3
MAINTAINER david <5812feel@gmail.com>
RUN apt-get update && \
    apt-get install -y openssh-server python-pip libnet1 libnet1-dev libpcap0.8 libpcap0.8-dev git
  
RUN pip install shadowsocks
RUN git clone https://github.com/snooda/net-speeder.git net-speeder
WORKDIR net-speeder
RUN sh build.sh

RUN mv net_speeder /usr/local/bin/
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/net_speeder

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
EXPOSE 10080