base:
  '*':
    - global
data:
  'dsecond.iofun.io':
    - postgresql
  'db*dev*':
    - db
rtc:
  'webserver*qa*':
    - webserver
  'db*qa*':
    - db
web:
  'webserver*prod*':
    - webserver
  'db*prod*':
    - db