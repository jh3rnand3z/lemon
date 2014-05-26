pg_hba.conf:
    file.managed:
        - name: /etc/postgresql/9.3/main/pg_hba.conf
        - source: salt://postgresql/pg_hba.conf
        - user: postgres
        - group: postgres
        - mode: 644
        - require:
            - pkg: postgresql-9.3

postgresql:
  pkgrepo.managed:
    - name: deb http://apt.postgresql.org/pub/repos/apt/ wheezy-pgdg main
    - file: /etc/apt/sources.list.d/pgdg.list
    - key_url: https://www.postgresql.org/media/keys/ACCC4CF8.asc
    - require_in:
      - pkg: postgresql-9.3

  pkg.latest:
    - name: postgresql-9.3
    - refresh: True

  service.running:
    - enable: True
    - watch:
      - file: /etc/postgresql/9.3/main/pg_hba.conf