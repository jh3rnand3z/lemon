base:

  '*':
    - erlang
    - global
    - github
    - user


data:

  '*sql*worker':
    - postgresql
    - asterisk

  '*mongo*worker':
    - mongodb


rtc:

  'rtc*worker*':
    - asterisk

  'rtc*proxy*':
    - kamailio

  'rtc*ice*':
    - coturn

  'rtc*engine*':
    - rtpengine


web:

  'web*worker*':
    - mango

  'web*proxy*':
    - nginx

