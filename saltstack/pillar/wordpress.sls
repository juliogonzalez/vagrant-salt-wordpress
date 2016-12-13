wordpress:
  cli:
    source: https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    hash:  https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar.sha512
  sites:
    site1:
      username: admin
      password: myadminpass
      database: site1db
      dbhost: localhost
      dbuser: site1dbuser
      # I tried referencing pillar data inside pillar, but the feature is still being developed
      # at https://github.com/saltstack/salt/pull/37003
      # Other solutions (like importing Yaml) does not seem to be too much clean, and most
      # probably is overengineering for this simple test
      dbpass: site1dbpass
      url: http://{{ grains['ip4_interfaces']['eth1'][0] }}/site1
      title: 'site1 title'
      email: root@localhost.inet
