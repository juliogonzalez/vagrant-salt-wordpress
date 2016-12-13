# This plugin will allow wordpress to be used from any domain or IP
wordpress-plugin-anydomain:
  cmd.run:
    - name: "/usr/local/bin/wp plugin install any-hostname --activate"
    - cwd: /var/www/html/site1
    - runas: apache

wordpress-config-theme:
  cmd.run:
    - name: "/usr/local/bin/wp theme install twentysixteen --activate"
    - cwd: /var/www/html/site1
    - runas: apache

wordpress-initial-post:
  cmd.run:
    - name: "/usr/local/bin/wp post create --post_type=post --post_status=publish --post_title='Hello world!' --post_content='This is just a test to show the usage of wp-cli.'"
    - cwd: /var/www/html/site1
    - runas: apache
