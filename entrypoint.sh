#!/bin/sh

DEFAULT_HS_URL="$DEFAULT_HS_URL"
DEFAULT_IS_URL="$DEFAULT_IS_URL"
BRAND="$BRAND"
INTEGRATIONS_UI_URL="$INTEGRATIONS_UI_URL"
INTEGRATIONS_REST_URL="$INTEGRATIONS_REST_URL"

sed -i "s#{{DEFAULT_HS_URL}}#${DEFAULT_HS_URL}#" /riot-web/webapp/config.json
sed -i "s#{{DEFAULT_IS_URL}}#${DEFAULT_IS_URL}#" /riot-web/webapp/config.json
sed -i "s#{{BRAND}}#${BRAND}#" /riot-web/webapp/config.json
sed -i "s#{{INTEGRATIONS_UI_URL}}#${INTEGRATIONS_UI_URL}#" /riot-web/webapp/config.json
sed -i "s#{{INTEGRATIONS_REST_URL}}#${INTEGRATIONS_REST_URL}#" /riot-web/webapp/config.json

cd riot-web
exec http-server -p 8080 -A 0.0.0.0 -c 3500
