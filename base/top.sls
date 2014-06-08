base:

  '*':
    - erlang
    - global
    - github
    - user

data:

  'data*sql*worker':
    - postgresql
    - asterisk

  'data*mongo*worker':
    - mongodb


  'data_overlords'
    -match: nodegroups

  'data_drones_sql'
    -match: nodegroups

  'data_drones_mongo'
    -match: nodegroups

rtc:

  'rtc*worker*':
    - asterisk

  'rtc*proxy*':
    - kamailio

  'rtc*ice*':
    - coturn

  'rtc*engine*':
    - rtpengine


  'rtc_cebus'
    -match: nodegroups

  'rtc_simon'
    -match: nodegroups

  'rtc_guardians'
    -match: nodegroups

  'rtc_overlords'
    -match: nodegroups

  'rtc_drones'
    -match: nodegroups

web:

  'web*worker*':
    - mango

  'web*proxy*':
    - nginx


  'web_cebus':
    - match: nodegroup

  'web_simon':
    - match: nodegroup

  'web_guardians':
    - match: nodegroups

  'web_overlords':
    - match: nodegroups

  'web_drones':
    - match: nodegroup
    - mango