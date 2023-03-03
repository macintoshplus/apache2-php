# DEPRECATED

Use the official PHP image and customize it.

# Use

composer run -d -v /path/sources:/sources -v /path/to/vhost:/etc/apache2/sites-enabled macintoshplus/apache2-php:php73


# Exemple of VHost

```
<VirtualHost *:80>
        ServerAdmin admin@domain.tld

        DocumentRoot /sources/public

        <ifModule mod_headers.c>
                Header set Server "DOCKER"
        </ifModule>
        <Directory />
                Options FollowSymLinks
                AllowOverride All
        </Directory>
        <Directory /sources/public/>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride All
                Require all granted
        </Directory>

        ErrorLog ${APACHE_LOG_DIR}/error.log

        # Possible values include: debug, info, notice, warn, error, crit,
        # alert, emerg.
        LogLevel warn

        CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```
