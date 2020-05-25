#!/bin/bash
# Configure spiped for redis connection

/opt/core/bin/spiped-configure-smf api-redis decrypt [::]:63790 [127.0.0.1]:6379 $(mdata-get api_redis_key)
