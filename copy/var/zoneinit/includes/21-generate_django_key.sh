sed '/^SECRET_KEY/d' /var/www/limeade3/limeade3/settings.py > /tmp/bak.settings.py \
 && mv /tmp/bak.settings.py /var/www/limeade3/limeade3/settings.py
python -c "from django.utils.crypto import get_random_string;print 'SECRET_KEY = \"' + get_random_string(50, 'abcdefghijklmnopqrstuvwxyz0123456789\!@#$%^&*(-_=+)') + '\"'" >> /var/www/limeade3/limeade3/settings.py
