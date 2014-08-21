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
    - howler

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

  rtc_overlords_1:
    - match: nodegroup
    - kamailio

  rtc_ice_1:
    - match: nodegroup
    - coturn

  rtc_engine_1':
    - match: nodegroup
    - rtpengine


web:

  web_workers_1:
    - match: nodegroup
    - mango

  web_overlords_1:
    - match: nodegroup
    - nginx