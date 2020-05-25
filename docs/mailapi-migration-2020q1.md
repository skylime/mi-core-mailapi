By this release the default dataset will change for the redis database folder, because with some core-base release we provide extra datasets for the admin (users) home.

Please follow this guideline to provide a new dataset for the redis database. Otherwise your data can be lost during the re-provision phase.

1. Stop the `redis` and `gunicorn` services

	svcadm stop svc:/pkgsrc/redis:default
	svcadm stop svc:/network/gunicorn:limeade

2. Remove the current running limeade3 (mailapi) cronjob

	crontab -e
	# Remove /opt/core/bin/import-cron

3. Create a new delegate dataset and copy existing data to it

	zfs create -o mountpoint=/mnt zones/$(mdata-get sdc:uuid)/data/redis
	cp /var/db/redis/* /mnt/

4. Set correct mountpoint and remove unused data

	rm /var/db/redis/*
	zfs set mountpoint=none zones/$(mdata-get sdc:uuid)/data
	zfs set mountpoint=/var/db/redis zones/$(mdata-get sdc:uuid)/data/redis

5. Reprovision the image with the latest version

	...
