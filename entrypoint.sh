#!/bin/sh
DOMAINS="${DOMAINS:-localhost}"
DEFAULT_HS_URL="$DEFAULT_HS_URL"
DEFAULT_IS_URL="$DEFAULT_IS_URL"
BRAND="$BRAND"
INTEGRATIONS_UI_URL="$INTEGRATIONS_UI_URL"
INTEGRATIONS_REST_URL="$INTEGRATIONS_REST_URL"
p=/riot-web
cfg=$p/config.json
set -eux
sed -i "s#{{BUG_URL}}#${BUG_URL}#"                             $cfg
sed -i "s#{{DEFAULT_HS_URL}}#${DEFAULT_HS_URL}#"               $cfg
sed -i "s#{{DEFAULT_IS_URL}}#${DEFAULT_IS_URL}#"               $cfg
sed -i "s#{{BRAND}}#${BRAND}#"                                 $cfg
sed -i "s#{{INTEGRATIONS_UI_URL}}#${INTEGRATIONS_UI_URL}#"     $cfg
sed -i "s#{{INTEGRATIONS_REST_URL}}#${INTEGRATIONS_REST_URL}#" $cfg
for d in ${DOMAINS};do
    cp -f $cfg $p/config.${d}.json
done
cd $p
exec http-server -p 8080 -A 0.0.0.0 -c 3500
