base:

  '*':
    - erlang
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
    - overlord.client
    - asterisk
    - asterisk.sounds
    - asterisk.samples
    - asterisk.config
    - odbc
    - fail2ban
    - shmow.config
    - shmow.gocella
    - howler

  fs_workers_1:
    - match: nodegroup
    - overlord.client
    - freeswitch
    - freeswitch.sounds
    - freeswitch.samples
    - freeswitch.config
    - odbc

  rtc_overlords_1:
    - match: nodegroup
    - overlord
    - kamailio

  rtc_ice_1:
    - match: nodegroup
    - overlord.imp
    - coturn

  rtc_engine_1':
    - match: nodegroup
    - overlord.imp
    - rtpengine


web:

  web_workers_1:
    - match: nodegroup
    - mango

  web_overlords_1:
    - match: nodegroup
    - nginx