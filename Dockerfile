FROM debian:jessie
MAINTAINER nrodriguez@jbox-web.com

ENV APT_CACHER_NG_CACHE_DIR=/var/cache/apt-cacher-ng \
    APT_CACHER_NG_LOG_DIR=/var/log/apt-cacher-ng \
    APT_CACHER_NG_USER=apt-cacher-ng

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y apt-cacher-ng

COPY acng.conf /etc/apt-cacher-ng/acng.conf

COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

EXPOSE 3142/tcp
VOLUME ["${APT_CACHER_NG_CACHE_DIR}"]
ENTRYPOINT ["/sbin/entrypoint.sh"]
