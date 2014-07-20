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
        - mode: 700
        - makedirs: True
        - recurse:
            - user
            - group
            - mode

freeswitch git code:
  git.latest:
    - name: git://git.freeswitch.org/freeswitch.git
    - target: /usr/src/freeswitch
    - rev: v1.2.stable
    - user: root

bootstrap freeswitch:
    cmd.run:
        - name: "./bootstrap.sh"
        - unless: which fs_cli
        - cwd: /usr/src/freeswitch/
        - require:
            - pkg: freeswitch requirements

compile freeswitch:
    cmd.run: 
        - name: "./configure && make && make install"
        - unless: which fs_cli
        - cwd: /usr/src/freeswitch/
        - require:
            - cmd: bootstrap freeswitch

/usr/local/freeswitch/bin/fs_cli:
  file.symlink:
    - target: /usr/local/bin/fs_cli
    - unless: which fs_cli
    - require:
        - cmd: compile freeswitch