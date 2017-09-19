FROM resin/rpi-raspbian:jessie

MAINTAINER knomic

RUN apt-get update \
    &&  apt-get -qy install \
	curl ca-certificates \
	python python-pip \
        python-dev git \
	gcc make \
	i2c-tools \
    &&  apt-get -y autoremove \
    &&  apt-get -y clean \
    &&  apt-get -y purge \
    &&  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \ 

RUN pip install rpi.gpio

CMD ["/bin/bash"]
