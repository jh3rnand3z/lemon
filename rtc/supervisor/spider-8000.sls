supervisor/conf/spider-8000.conf:
    file.managed:
        - name: /etc/supervisor/conf.d/spider-8000.conf
        - source: salt://supervisor/conf/spider-8000.conf
        - template: jinja