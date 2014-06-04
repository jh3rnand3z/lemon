base:

  '*':
    - global
    - github
    - user


ai:

  'ai_nodes':
    -match: nodegroup

  'ai_clusters':
    -match: nodegroup

  'ai_cohorts':
    -match: nodegroup

  'ai_clouds':
    -match: nodegroup

  'ai_overlords'
    -match: nodegroups

  'ai_drones'
    -match: nodegroups


data:

  'data*sql*worker':
    - postgresql
    - asterisk

  'data*mongo*worker':
    - mongodb

  'data_nodes':
    -match: nodegroups

  'data_clusters':
    -match: nodegroups

  'data_cohorts':
    -match: nodegroups

  'data_clouds':
    -match: nodegroups

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

  'rtc_nodes':
    -match: nodegroups

  'rtc_clusters':
    -match: nodegroups

  'rtc_cohorts':
    -match: nodegroups

  'rtc_clouds':
    -match: nodegroups

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

  'web_nodes':
    -match: nodegroups

  'web_clusters'
    -match: nodegroups

  'web_cohorts'
    -match: nodegroups

  'web_clouds'
    -match: nodegroups

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