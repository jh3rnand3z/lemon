include:
    - requirements

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