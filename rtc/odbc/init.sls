odbc:
    pkg.latest:
        - name: odbc-postgresql
        - refresh: True

odbc.ini:
    file.managed:
        - name: /etc/odbc.ini
        - source: salt://rtc/odbc/odbc.ini
        - require:
            - odbc

odbcinst.ini:
    file.managed:
        - name: /etc/odbcinst.ini
        - source: salt://rtc/odbc/odbcinst.ini
        - require:
            - odbc