base:
  '*':
    - global
    - github
    - user
data:
  'data*sql*':
    - postgresql
    - asterisk
  'data*mongo*':
    - mongodb
rtc:
  'rtc*worker*':
    - asterisk
  'rtc*proxy*':
    - kamailio
  'rtc*ice*':
    - rfc5766-turn-server
  'rtc*engine*':
    - rtpengine
web:
  'web*worker*':
    - mango
  'web*proxy*':
    - nginx