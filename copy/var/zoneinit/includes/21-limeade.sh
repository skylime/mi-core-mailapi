#!/bin/bash
# Make django app production ready

ALLOWED_HOST=$(hostname)
SECRET_KEY=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-100})

/opt/local/bin/sed -i \
	-e "s:^DEBUG.*:DEBUG = False:g" \
	-e "s:^TEMPLATE_DEBUG.*:TEMPLATE_DEBUG = False:g" \
	-e "s:^ALLOWED_HOSTS.*:ALLOWED_HOSTS = ['${ALLOWED_HOST}', '127.0.0.1', 'localhost']:g" \
	/var/www/limeade3/limeade3/settings.py
