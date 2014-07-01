CRON="0,5,10,15,20,25,30,35,40,45,50,55 * * * *        /opt/core/bin/import-cron"
(crontab -l www 2>/dev/null || true; echo "$CRON" ) | sort | uniq | sudo -u www crontab
