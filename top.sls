base:
  '*':
    - global
data:
  'webserver*dev*':
    - webserver
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