include:
    - requirements

freeswitch:
    user.present:
        - home: /usr/local/freeswitch
        - groups:
            - daemon

daemon:
    group.present:
        - system: True
        - addusers:
            - freeswitch

/usr/local/freeswitch:
    file.directory:
        - user: freeswitch
        - group: daemon
        - mode: 750
        - recurse:
            - user
            - group
            - mode

freeswitch source:
  file:
    - managed
    - name: /usr/src/freeswitch-v1.2.stable.tar.gz 
    - source: salt://source/freeswitch-v1.2.stable.tar.gz

untar freeswitch:
    cmd.run:
        - name: "tar -zxf freeswitch-v1.2.stable.tar.gz"
        - unless: "which fs_cli"
        - cwd: /usr/src/
        - require:
            - file: freeswitch source

freeswitch git code:
  git.latest:
    - name: https://stash.freeswitch.org/scm/fs/freeswitch.git
    - target: /usr/src/freeswitch
    - rev: v1.2.stable
    - user: root

bootstrap freeswitch:
    cmd.run:
        - name: "./bootstrap.sh"
        - unless: "cat /usr/src/freeswitch/freeswitch"
        - cwd: /usr/src/freeswitch/

compile freeswitch:
    cmd.run: 
        - name: "./configure && make && make install && echo 'true' > /usr/src/freeswitch/freeswitch"
        - unless: "cat /usr/src/freeswitch/freeswitch"
        - cwd: /usr/src/freeswitch/
        - require:
            - cmd: bootstrap freeswitch

/usr/local/freeswitch/bin/fs_cli:
  file.symlink:
    - target: /usr/local/bin/fs_cli
    - unless: "which fs_cli"
    - require:
        - cmd: compile freeswitch