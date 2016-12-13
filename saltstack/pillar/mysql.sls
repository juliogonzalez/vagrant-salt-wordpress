mysql:
  server:
    root_user: 'root'
    root_password: 'samplepass'
    mysqld:
      # you can use either underscore or hyphen in param names
      bind-address: 127.0.0.1

  salt_user:
    salt_user_name: 'root'
    salt_user_password: 'samplepass'
    grants:
      - 'all privileges'

  # Manage databases
  database:
    - site1db

  # Manage users
  user:
    sqladmin:
      password: 'sqlpass'
      host: localhost
      grants:
       - 'all privileges'
    site1dbuser:
      password: 'site1dbpass'
      host: localhost
      databases:
        - database: site1db
          grants: ['all privileges']
