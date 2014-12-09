base:

  '*':
    - python
    - erlang
    - lua
    - global
    - github
    - user


data:

  sql_workers_1:
    - match: nodegroup
    - postgresql
    - asterisk
 
  mongo_workers_1:
    - match: nodegroup
    - mongodb
    - monit


rtc:

  ast_workers_1:
    - match: nodegroup
    - asterisk
    - asterisk.sounds
    - asterisk.samples
    - asterisk.config
    - asterisk.gocella
    - odbc
    - fail2ban
#    - howler
#    - howler.sounds
#    - howler.contacts
#    - howler.directories
#    - howler.campaigns
    - monit
#   - supervisor
#    - supervisor.howler-8000

  fs_workers_1:
    - match: nodegroup
    - freeswitch
    - freeswitch.sounds
    - freeswitch.samples
    - freeswitch.config
    - freeswitch.gocella
    - freeswitch.rate
    - freeswitch.radio
    - freeswitch.munico
    - odbc
    - monit

  rtc_overlords_1:
    - match: nodegroup
    - creep
    - kamailio
    - monit

  rtc_ice_1:
    - match: nodegroup
    - coturn
    - monit

  rtc_engine_1':
    - match: nodegroup
    - rtpengine
    - monit


web:

  web_workers_1:
    - match: nodegroup
    - mango
    - seed
    - monit
    - supervisor
    - supervisor.mango-8000
    - nginx
    
  web_workers_2:
    - match: nodegroup
    - mango
    - monit
    - supervisor
    - supervisor.mango-8000
    - supervisor.mango-8001

  web_overlords_1:
    - match: nodegroup
    - creep
    - monit
    - supervisor
    - nginx

  web_overlords_2:
    - match: nodegroup
    - monit
    - supervisor

  web_gunter_1:
    - match: nodegroup
    - monit
    - supervisor
    - nginx
    - kamailio
