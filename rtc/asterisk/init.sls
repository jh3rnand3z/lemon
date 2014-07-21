include:
    - requirements

asterisk:
    user.present

/var/lib/asterisk:
    file.directory:
        - user: asterisk
        - group: asterisk
        - recurse:
            - user
            - group

/var/run/asterisk:
    file.directory:
        - user: asterisk
        - group: asterisk
        - recurse:
            - user
            - group

/var/log/asterisk:
    file.directory:
        - user: asterisk
        - group: asterisk
        - recurse:
            - user
            - group

/var/spool/asterisk:
    file.directory:
        - user: asterisk
        - group: asterisk
        - recurse:
            - user
            - group

/etc/asterisk:
    file.directory:
        - user: asterisk
        - group: asterisk
        - recurse:
            - user
            - group

asterisk source:
  file:
    - managed
    - name: /usr/src/asterisk-11.9.0.tar.gz 
    - source: salt://source/asterisk-11.9.0.tar.gz

untar asterisk:
    cmd.run:
        - name: "tar -zxf asterisk-11.9.0.tar.gz"
        - unless: which asterisk
        - cwd: /usr/src/
        - require:
            - file: asterisk source

compile asterisk:
    cmd.run: 
        - name: "./configure && make && make install && make config"
        - unless: which asterisk
        - cwd: /usr/src/asterisk-11.9.0/
        - require:
            - cmd: untar asterisk