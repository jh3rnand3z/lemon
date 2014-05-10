base:
  '*':
    - global
data:
  'sql*data*':
    - postgresql
  'mongo*data*':
    - mongodb
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