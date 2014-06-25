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

  rtc_workers_1:
    - match: nodegroup
    - asterisk
    - asterisk.config
    - odbc
    - shmow.config
    - shmow.gocella

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