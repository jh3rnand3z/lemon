/var/lib/asterisk/sounds/gocella:
    file.directory:
        - user: asterisk
        - group: asterisk

studentloan.wav:
    file.managed:
        - name: /var/lib/asterisk/sounds/gocella/studentloan.wav
        - source: salt://sounds/gocella/studentloan.wav

voicemail.wav:
    file.managed:
        - name: /var/lib/asterisk/sounds/gocella/voicemail.wav
        - source: salt://sounds/gocella/voicemail.wav