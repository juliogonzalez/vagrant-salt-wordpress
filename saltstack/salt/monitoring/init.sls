monitoring:
  user.present:
    - fullname: Monitoring User
    - shell: /bin/bash
    - home: /home/monitoring

? {{ pillar['monitoring']['ssh_public_key'] }}
:
  ssh_auth.present:
    - user: monitoring
    - enc: ssh-rsa
    - comment: monitoring@somehost
    
