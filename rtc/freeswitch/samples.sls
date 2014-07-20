include:
    - freeswitch

fs make samples:
    cmd.run: 
        - name: "make samples"
        - unless: which fs_cli
        - cwd: /usr/src/freeswitch/
        - require:
            - cmd: compile freeswitch