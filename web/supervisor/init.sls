/etc/supervisord.conf:
  file:
    - managed
    - source: salt://supervisor/config/supervisord.conf
    - user: root
    - group: root
    - mode: 644

supervisor:
  pkg:
    - installed
  service:
    - running
    - watch:
      - pkg: supervisor
      - file: /etc/supervisord.conf