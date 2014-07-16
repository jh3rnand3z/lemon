freeswitch-requirements:
    pkg.installed:
        - names:    
             - autoconf
             - automake
             - devscripts
             - gawk 
             - g++
             - git-core
             - libjpeg-dev
             - libncurses5-dev
             - libtool
             - make
             - python-dev
             - gawk
             - pkg-config
             - libtiff5-dev
             - libperl-dev
             - libgdbm-dev
             - libdb-dev
             - gettext
             - libssl-dev
             - libcurl4-openssl-dev
             - libpcre3-dev
             - libspeex-dev
             - libspeexdsp-dev
             - libsqlite3-dev
             - libedit-dev

freeswitch-code:
  git.latest:
    - name: git://git.freeswitch.org/freeswitch.git
    - target: /usr/src/freeswitch
    - rev: v1.2.stable
    - user: root

bootstrap freeswitch:
    cmd.run:
        - name: "./bootstrap.sh"
        - unless: which freeswitch
        - cwd: /usr/src/freeswitch/
        - require:
            - pkg: freeswitch-requirements

compile freeswitch:
    cmd.run: 
        - name: "./configure && make && make install"
        - unless: which freeswitch
        - cwd: /usr/src/freeswitch/
        - require:
            - cmd: bootstrap freeswitch

make sounds:
    cmd.run: 
        - name: "make cd-sounds-install && make cd-moh-install"
        - unless: which freeswitch
        - cwd: /usr/src/freeswitch/
        - require:
            - cmd: compile freeswitch