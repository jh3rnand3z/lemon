/usr/local/freeswitch/sounds/rate:
    file.directory:
        - user: freeswitch
        - group: daemon

reduction.wav:
    file.managed:
        - name: /usr/local/freeswitch/sounds/rate/reduction.wav
        - source: salt://sounds/rate/reduction.wav

rate_avmd.lua:
    file.managed:
        - name: /usr/local/freeswitch/scripts/rate_avmd.lua
        - source: salt://freeswitch/scripts/rate_avmd.lua