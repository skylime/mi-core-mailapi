#!/bin/bash
# Configure nginx authentication

# Basic authentication
mdata-get nginx_auth > /opt/local/etc/nginx/auth.htpasswd
