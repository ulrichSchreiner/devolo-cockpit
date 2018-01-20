FROM ubuntu:16.04

RUN dpkg --add-architecture i386 && \
    apt update && \
    apt install -y \
	curl \
	libgtk2.0-0:i386 \
	lzma \
	xz-utils

ENV COCKPIT_VERSION=4-3-3

RUN curl -sSL https://www.devolo.de/fileadmin/user_upload/Downloads/Software/Cockpit/software-devolo-cockpit-linux-v${COCKPIT_VERSION}.run >/tmp/cockpit.run && \
    chmod +x /tmp/cockpit.run

RUN /tmp/cockpit.run

ADD start.sh /start.sh
CMD /start.sh


