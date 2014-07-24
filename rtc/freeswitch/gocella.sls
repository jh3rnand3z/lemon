/usr/local/freeswitch/sounds/gocella:
    file.directory:
        - user: freeswitch
        - group: daemon

studentloan.wav:
    file.managed:
        - name: /usr/local/freeswitch/sounds/gocella/studentloan.wav
        - source: salt://sounds/gocella/studentloan.wav

voicemail.wav:
    file.managed:
        - name: /usr/local/freeswitch/sounds/gocella/voicemail.wav
        - source: salt://sounds/gocella/voicemail.wav