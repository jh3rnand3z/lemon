include:
    - freeswitch

fs make sounds:
    cmd.run: 
        - name: "make cd-sounds-install && make cd-moh-install"
        - unless: which fs_cli
        - cwd: /usr/src/freeswitch/
        - require:
            - cmd: compile freeswitch