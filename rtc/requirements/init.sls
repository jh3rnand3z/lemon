{% set kernel_release = salt['grains.get']('kernelrelease', '') %}

asterisk packages:
    pkg.installed:
        - names:
            - build-essential
            - libssl-dev
            - python-dev
            - libncurses5-dev
            - libnewt-dev
            - libxml2-dev
            - linux-headers-{{ kernel_release }}
            - libsqlite3-dev
            - uuid-dev
            - uuid
            - libcurl4-openssl-dev
            - odbcinst
            - unixodbc
            - unixodbc-dev
            - libsrtp0-dev
            - libgmime-2.6-dev
            - libspeexdsp-dev
            - speex
            - libspeex-dev

freeswitch packages:
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