base:
  '*':
    - global
data:
  'sql*data*':
    - postgresql
  'mongo*data*':
    - mongodb
rtc:
  'worker*rtc*':
    - asterisk
  'proxy*rtc*':
    - kamailio
  'ice*rtc*':
    - rfc5766-turn-server
  'rtp*rtc*':
    - rtpengine
web:
  'worker*web*':
    - mango
  'proxy*web*':
    - nginx