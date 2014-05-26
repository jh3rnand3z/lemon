asterisk dump:
  file:
    - managed
    - name: /tmp/asterisk.sql 
    - source: salt://dump/asterisk.sql

data asterisk:
    postgres_database.present:
        - name: asterisk
        - encoding: UTF8
        - lc_ctype: en_US.UTF8
        - lc_collate: en_US.UTF8
        - template: template0
        - owner: postgres
        - runas: postgres
        - require:
            - service: postgresql
            - file: asterisk dump

compile asterisk:
    cmd.run: 
        - name: "psql asterisk < asterisk.sql"
        - cwd: /tmp/
        - runas: postgres
        - require:
            - cmd: data asterisk