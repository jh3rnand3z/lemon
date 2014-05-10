{% set kernel_release = salt['grains.get']('kernelrelease', '') %}

packages:
    pkg.installed:
        - names:
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
            - libsrtp-dev
            - libgmime-2.6-dev
            - libspeexdsp-dev
            - speex
            - libspeex-dev
