/etc/nginx/nginx.conf:
  file:
    - managed
    - source: salt://nginx/conf/nginx.conf
    - user: root
    - group: root
    - mode: 644

nginx:
  pkg:
    - installed
  service:
    - running
    - watch:
      - pkg: nginx
      - file: /etc/nginx/nginx.conf