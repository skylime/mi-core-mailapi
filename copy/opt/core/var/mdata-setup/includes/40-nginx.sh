#!/bin/bash
# Configure nginx ssl certificate and authentication

# SSL
mdata-get nginx_ssl > /opt/local/etc/nginx/ssl/nginx.pem
chmod 400 /opt/local/etc/nginx/ssl/nginx.pem

# Basic authentication
mdata-get nginx_auth > /opt/local/etc/nginx/auth.htpasswd
