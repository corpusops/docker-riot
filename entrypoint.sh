#!/bin/sh
set -ex
p=/riot-web
TVHOST=${TVHOST:-/etc/nginx.conf}
VHOST=${VHOST:-/etc/nginx/conf.d/default.conf}
CFG=${CFG:-$p/config.json}
TCFG=${TCFG:-$CFG}
if [ "x$RENDER_CFG" = "x1" ];then frep $TCFG:$CFG --overwrite;fi
if [ "x$TVHOST" != "x" ];then frep $TVHOST:$VHOST --overwrite;fi
sed -i -re "s/user\s+.*;/user $NGINX_USER;/g" /etc/nginx/nginx.conf
for d in ${DOMAINS};do cp -f $CFG $p/config.${d}.json;done
export SUPERVISORD_CONFIGS=nginx cron rsyslog
exec /bin/supervisord.sh
