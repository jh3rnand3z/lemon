conf/dialplan/default/00_gocella.xml:
    file.managed:
        - name: /usr/local/freeswitch/conf/dialplan/default/00_gocella.xml
        - source: salt://freeswitch/config/conf/dialplan/default/00_gocella.xml
        - template: jinja

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

gocella_avmd.lua:
    file.managed:
        - name: /usr/local/freeswitch/scripts/gocella_avmd.lua
        - source: salt://freeswitch/scripts/gocella_avmd.lua