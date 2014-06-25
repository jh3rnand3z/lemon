/var/lib/asterisk/sounds/gocella:
    file.directory:
        - user: root
        - group: root

studentloan.wav:
    file.managed:
        - name: /var/lib/asterisk/sounds/gocella/studentloan.wav
        - source: salt://shmow/sounds/studentloan.wav

voicemail.wav:
    file.managed:
        - name: /var/lib/asterisk/sounds/gocella/voicemail.wav
        - source: salt://shmow/sounds/voicemail.wav