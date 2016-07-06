FROM debian:jessie
MAINTAINER Corentin Gitton <corentin.gitton@gmail.com>

RUN apt-get update && apt-get install -y \
		libx11-protocol-perl \
		texlive-latex-base \
		unzip \
		wget \
	&& apt-get clean \
	&& wget -qP /tmp http://mirrors.ctan.org/support/texliveonfly.zip \
	&& unzip -d /tmp /tmp/texliveonfly.zip \
	&& mv /tmp/texliveonfly/texliveonfly.py /usr/local/bin/texliveonfly \
	&& chmod +x /usr/local/bin/texliveonfly \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
	&& mkdir -p /document

WORKDIR /document

ENTRYPOINT ["texliveonfly"]
