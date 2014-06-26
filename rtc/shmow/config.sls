/tmp/outbound:
    file.directory:
        - user: root
        - group: root

/var/lib/asterisk/agi-bin/shmow:
    file.directory:
        - user: root
        - group: root

/var/lib/asterisk/agi-bin/shmow/cow:
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

__init__.py:
    file.managed:
        - name: /var/lib/asterisk/agi-bin/shmow/cow/__init__.py
        - source: salt://shmow/cow/__init__.py

agi.py:
    file.managed:
        - name: /var/lib/asterisk/agi-bin/shmow/cow/agi.py
        - source: salt://shmow/cow/agi.py

ami.py:
    file.managed:
        - name: /var/lib/asterisk/agi-bin/shmow/cow/ami.py
        - source: salt://shmow/cow/ami.py

call.py:
    file.managed:
        - name: /var/lib/asterisk/agi-bin/shmow/cow/call.py
        - source: salt://shmow/cow/call.py

ivr.py:
    file.managed:
        - name: /var/lib/asterisk/agi-bin/shmow/cow/ivr.py
        - source: salt://shmow/cow/ivr.py

