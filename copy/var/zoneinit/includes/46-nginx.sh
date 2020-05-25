#!/bin/bash
# Configure nginx authentication

# Basic authentication
if NGINX_AUTH=$(mdata-get nginx_auth 2>/dev/null); then
	echo ${NGINX_AUTH} > /opt/local/etc/nginx/auth.htpasswd
fi

# Start nginx service
svcadm enable svc:/pkgsrc/nginx:default
