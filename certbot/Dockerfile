FROM ubuntu:16.04

MAINTAINER Reprage

RUN apt-get update
RUN apt-get -y install wget
RUN apt-get -y install cron

ADD crontab /etc/cron.d/certbot-cron
RUN chmod 0644 /etc/cron.d/certbot-cron
RUN crontab /etc/cron.d/certbot-cron

RUN touch /var/log/cron.log

RUN wget https://dl.eff.org/certbot-auto
RUN chmod a+x certbot-auto
RUN ./certbot-auto --os-packages-only -n

CMD cron && tail -f /var/log/cron.log