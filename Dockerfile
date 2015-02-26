#
# Base image for images driven by Tiller (a configuration templating/bootstrapping tool)
#
# docker-build properties:
# TAG=barchart/tiller:latest

FROM barchart/base
MAINTAINER Jeremy Jongsma "jeremy@barchart.com"

RUN apt-get --yes update && \
	apt-get --yes install ruby && \
	apt-get clean && \
	gem install tiller && \
	rm -rf /var/lib/gems/*/cache/*

CMD ["/usr/local/bin/tiller", "-v"]
