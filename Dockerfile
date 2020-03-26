FROM ubuntu:18.04

RUN dpkg --add-architecture i386 && \
    apt update && \
    apt install -y \
	curl \
	libgtk2.0-0:i386 \
	lzma \
	xz-utils

ENV COCKPIT_VERSION=v5-1-2

RUN curl -SL https://www.devolo.de/fileadmin/Web-Content/DE/products/hnw/devolo-cockpit/software/devolo-cockpit-${COCKPIT_VERSION}-linux.run > /tmp/cockpit.run && chmod +x /tmp/cockpit.run

RUN /tmp/cockpit.run

ADD start.sh /start.sh
CMD /start.sh


