#!/bin/bash
# Create remote logging file if mdata is configured

RSYSLOG_CONF_D='/opt/local/etc/rsyslog.d/'

echo '# remote-logging' > ${RSYSLOG_CONF_D}/remote-logging.conf
if mdata-get syslog_ssl 1>/dev/null 2>&1; then
	mdata-get syslog_ssl > ${RSYSLOG_CONF_D}/remote-logging-ca.pem
	echo '# use tls'                            >> ${RSYSLOG_CONF_D}/remote-logging.conf
	echo '$DefaultNetstreamDriver gtls'         >> ${RSYSLOG_CONF_D}/remote-logging.conf
	echo '$ActionSendStreamDriverMode 1'        >> ${RSYSLOG_CONF_D}/remote-logging.conf
	echo '$ActionSendStreamDriverAuthMode anon' >> ${RSYSLOG_CONF_D}/remote-logging.conf
	echo "\$DefaultNetstreamDriverCAFile ${RSYSLOG_CONF_D}/remote-logging-ca.pem" \
		>> ${RSYSLOG_CONF_D}/remote-logging.conf
fi

if mdata-get syslog_host 1>/dev/null 2>&1; then
	echo '# send (all) messages'        >> ${RSYSLOG_CONF_D}/remote-logging.conf
	echo "*.* $(mdata-get syslog_host)" >> ${RSYSLOG_CONF_D}/remote-logging.conf
fi
