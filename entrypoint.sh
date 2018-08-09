#!/bin/sh
set -ex
DOMAINS="${DOMAINS:-localhost}"
DEFAULT_HS_URL="${DEFAULT_HS_URL-}"
DEFAULT_IS_URL="${DEFAULT_IS_URL-}"
BRAND="${BRAND:-Riot}"
INTEGRATIONS_UI_URL="${INTEGRATIONS_UI_URL-}"
INTEGRATIONS_REST_URL="${INTEGRATIONS_REST_URL-}"
DEFAULT_THEME=${DEFAULT_THEME:-dark}
p=/riot-web
cfg=$p/config.json
set -eux
sed -i "s#{{BUG_URL}}#${BUG_URL}#" $cfg
sed -i "s#{{DEFAULT_HS_URL}}#${DEFAULT_HS_URL}#" $cfg
sed -i "s#{{DEFAULT_IS_URL}}#${DEFAULT_IS_URL}#" $cfg
sed -i "s#{{INTEGRATIONS_UI_URL}}#${INTEGRATIONS_UI_URL}#" $cfg
sed -i "s#{{INTEGRATIONS_REST_URL}}#${INTEGRATIONS_REST_URL}#" $cfg
sed -i "s#{{INTEGRATIONS_WIDGETSJITSI_URL}}#${INTEGRATIONS_WIDGETSJITSI_URL}#" $cfg
sed -i "s#{{INTEGRATIONS_WIDGETS_URL}}#${INTEGRATIONS_WIDGETS_URL}#" $cfg
sed -i "s#{{DEFAULT_THEME}}#${DEFAULT_THEME}#" $cfg
sed -i "s#{{BRAND}}#${BRAND}#" $cfg
for d in ${DOMAINS};do
    cp -f $cfg $p/config.${d}.json
done
cd $p
exec http-server -p 8080 -A 0.0.0.0 -c 3500
