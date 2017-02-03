FROM debian:jessie
MAINTAINER Regis CELY <regiscel@fr.ibm.com>

# Surpress Upstart errors/warning
RUN dpkg-divert --local --rename --add /sbin/initctl && ln -sf /bin/true /sbin/initctl

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

# Install boinc client
RUN apt-get update && apt-get install --yes --no-install-recommends --no-install-suggests boinc-client && apt-get clean && rm -rf /var/lib/apt/lists/*


User boinc
EXPOSE 31416 80 443
WORKDIR /var/lib/boinc-client

