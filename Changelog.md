# Changelog

## 20.1.0

### New

* Add support for Python 3.7 and latest limeade3 / mailapi release. [Thomas Merkel]
* Add extra dataset support for redis db folder. [Thomas Merkel]

  Please look at the docs/mailapi-migration-2020q1.md guide before running any re-provision.

### Fix

* Call default python version, remove any special version. [Thomas Merkel]

### Other

* Use new SSL generation method. [Thomas Merkel]
* Yearly license update. [Thomas Merkel]

## 16.4.0

### New

* Version bump to 16.4.0. [Thomas Merkel]

  Provide the newest version of core-base and include Let&#x27;s Encrypt support

### Other

* Update License date. [Thomas Merkel]
* Remove unused gitignore file. [Thomas Merkel]

## 16.2.0

### New

* Update to newest core-base 16.2.2 Release with lot&#x27;s of new pkgsrc versions. [Thomas Merkel]

  Fixing version update for python 3.3 to 3.4. Fixing download of limeade version via wget / curl.

### Other

* Add new manifest.json format for deploy.zone. [Thomas Merkel]
* Enable gunicorn:limeade via zoneinit and not by default. [Thomas Merkel]
* Automatically import gunicorn smf for limeade3. [Thomas Merkel]
* Update license for SkyLime GmbH. [Thomas Merkel]
* Add py27-ipython for better debuging. [Thomas Merkel]

## 14.2.6

### Other

* version bump. [Thomas Merkel]
* update to new limeade3 version 0.0.9. [Boris Poblotzki]

## 14.2.5

### Other

* never released because of wrong version nameing

## 14.2.4

### New

* update to new core-base image cd298780-4d55-11e4-addf-63835732c9d9. [Thomas Merkel]
* update to new limeade3 version (Support spoofing_whitelist and submission_disabled in the basic json api) [Thomas Merkel]

## 14.2.3 (2014-10-02)

### New

* update to new core-base image 5f32cd38-4a1f-11e4-82e4-632b59542bc6. [Thomas Merkel]

## 14.2.2 (2014-09-27)

### New

* update to new core-base image 43aaede4-4622-11e4-a839-d3704910e498. [Thomas Merkel]

## 14.2.1 (2014-09-25)

### Other

* update version because of new base image. [Thomas Merkel]
* update to new core-base image: a6fb1ff0-4333-11e4-a0e1-370c81688134. [Thomas Merkel]

## 14.2.0 (2014-09-21)

### Other

* update changelog and base. [Thomas Merkel]
* update to new core-base image: 6babbf24-3765-11e4-a87a-23e846a65e81. [Thomas Merkel]
* update to new core-base image: 99c9e7ac-34ed-11e4-bdc4-236f63b1ea9d. [Thomas Merkel]
* update readme file. [Thomas Merkel]
* update to new core-base image: 89402478-34cf-11e4-ac94-f3a4d047918f. [Thomas Merkel]
* update to new core-base image: aed27f7a-34c4-11e4-be6c-4392ae5601bc. [Thomas Merkel]
* modify cron, to run as root with sudo python command. [Thomas Merkel]
* update to new core-base image: 5f749f3c-335f-11e4-a952-e780d226fa57. [Thomas Merkel]
* update to new core-base image: fbd244a6-32bf-11e4-8629-73c3e6ed202d. [Thomas Merkel]
* update limeade version to v0.0.7. [Thomas Merkel]
* add forward protocol to nginx. [Thomas Merkel]
* rename to limeade. [Thomas Merkel]
* case required. [Thomas Merkel]
* fix syntax. [Thomas Merkel]
* Create production ready config file for django. [Thomas Merkel]
* update to new core-base image: 86465fe4-312d-11e4-a145-57554f40fa40. [Thomas Merkel]
* version is not required. [Thomas Merkel]
* add munin support to customize script. [Thomas Merkel]
* update to new base image. [Thomas Merkel]
* add --donotask to backup system. [Thomas Merkel]
* update to new base image. [Thomas Merkel]
* add backup via znapzend. [Thomas Merkel]
* version update to v0.0.6. [Thomas Merkel]
* update base image. [Thomas Merkel]
* spiped-configure-smf moved to base image. [Thomas Merkel]
* modify nginx config to use gunicorn. [Thomas Merkel]
* replace uwsgi pkg with gunicorn. [Thomas Merkel]
* remove uwsgi and add gunicorn. [Thomas Merkel]
* be a raw string please. [Thomas Merkel]
* update base. [Thomas Merkel]
* remove spipe because its in the base. [Thomas Merkel]
* update to new base. [Thomas Merkel]
* remove mdata setup script. [Thomas Merkel]
* fix typo. [Thomas Merkel]
* update version information. [Thomas Merkel]
* Switch to new core-base image. [Thomas Merkel]

    * remove munin * remove remote-logging * update to 2014Q2

* switched limeade release. [Boris Poblotzki]
* typo in django keygen zoneinit. [Boris Poblotzki]
* Merge branch 'master' into branch-test. [Boris Poblotzki]

    Conflicts:         customize

* update munin plugins to new version 0.2. [Thomas Merkel]
* restart rsyslog after config change. [Thomas Merkel]
* should work without delegated-dataset as well. [Thomas Merkel]
* fix version number for munin-plugins. [Thomas Merkel]
* Remote syslog support. [Thomas Merkel]

    * add two new mdata options (syslog_host, syslog_ssl) * update readme
    * create extra config folder for rsyslog

* Use own repository for munin-plugins. [Thomas Merkel]
* Use extra includes folder for mdata information. [Thomas Merkel]
* Use mdata-setup with `-s` on enable. [Thomas Merkel]
* fix plugin check for different munin stuff. [Thomas Merkel]
* missing munin plugin variables. [Thomas Merkel]
* Add munini-node for monitoring. [Thomas Merkel]

    * add default plugins * add nginx plugin * add redis plugin

* fix broken cronjob. [Thomas Merkel]

    * if cronjob is missing it should be created and no old one should be
    deleted * because of `set -x` we use `||` to run possible fail
    commands also

* basic authentication and ssl for https. [Thomas Merkel]

    * create ssl folder for nginx * deploy ssl certificate and key *
    create htpasswd auth file based on mdata * update readme

* zoneinit scripts should be executeable. [Sebastian Wiedenroth]
* bump version. [Sebastian Wiedenroth]
* add legacy JSON import. [Sebastian Wiedenroth]
* enable services at zoneinit and use limeade3 v.0.0.4. [Sebastian Wiedenroth]
* use full path to base64. [Sebastian Wiedenroth]
* chown for redis. [Sebastian Wiedenroth]
* correctly generate static files. [Sebastian Wiedenroth]
* install django before using commands that require it. [Sebastian Wiedenroth]
* strange github release archives. [Sebastian Wiedenroth]
* initial version of mi-core-mailapi. [Sebastian Wiedenroth]
* Fixed verbage in packages file. [Derek Crudgington]
* Merge branch 'master' of github.com:joyent/mi-example. [Derek Crudgington]
* Added extra space to motd. [Derek Crudgington]
* Fixed customize. [Derek Crudgington]
* Added new packages file. [Derek Crudgington]
* Removed .gitignore from copy directory. [Derek Crudgington]
* Added var/zoneinit/includes directory. [Derek Crudgington]
* Added LICENSE and copy directory. [Derek Crudgington]
* Initial release. [Derek Crudgington]

