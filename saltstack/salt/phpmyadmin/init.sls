phpMyAdmin:
  pkg:
    - installed
    - require:
      - pkg: epel-release
      - pkg: mysql-server
      - pkg: httpd

/etc/httpd/conf.d/phpMyAdmin.conf:
  file.managed:
    - source: salt://phpmyadmin/phpMyAdmin.conf

httpd:
  service.running:
    - enable: True
    - reload: True
    - watch:
      - file: /etc/httpd/conf.d/phpMyAdmin.conf
