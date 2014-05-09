mongodb:
  pkgrepo.managed:
    - name: deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen
    - dist: wheezy
    - file: /etc/apt/sources.list.d/mongodb.list
    - keyid: 7F0CEB10
    - keyserver: keyserver.ubuntu.com
    - require_in:
      - pkg: mongodb-10gen

  pkg.latest:
    - name: mongodb-10gen
    - refresh: True