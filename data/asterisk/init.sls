asterisk:
    postgres_database.present:
        - name: asterisk
        - encoding: UTF8
        - lc_ctype: en_US.UTF-8
        - lc_collate: en_US.UTF-8
        - template: template0
        - owner: postgres
        - runas: postgres
        - require:
            - service: postgresql

asterisk dump:
  file:
    - managed
    - name: /tmp/asterisk.sql 
    - source: salt://dump/asterisk.sql

restore asterisk:
    cmd.run: 
        - name: "psql asterisk < asterisk.sql"
        - cwd: /tmp/
        - runas: postgres
        - require:
            - postgres_database: asterisk
            - file: asterisk dump