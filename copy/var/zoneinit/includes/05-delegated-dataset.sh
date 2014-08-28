#!/bin/bash
UUID=$(mdata-get sdc:uuid)
DDS=zones/$UUID/data

if zfs list $DDS 1>/dev/null 2>&1; then
	zfs set mountpoint=/var/db/redis/ $DDS
	chown redis /var/db/redis/

	# znapzend for backup
	znapzendzetup create --recursive --tsformat='%Y-%m-%d-%H%M%S' \
		SRC '7day=>1hour,30day=>1day,1year=>1week,10year=>1month' ${DDS}
	/usr/sbin/svcadm enable svc:/pkgsrc/znapzend:default
fi
