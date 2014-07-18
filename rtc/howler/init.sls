include:
    - requirements

/home/asterisk/venv/howler:
    virtualenv.managed:
        - no_site_packages: True
        - user: asterisk
        - requirements: salt://howler/requirements.txt
        - require:
            - pkg: python-dev
            - pkg: python-pip
            - pkg: python-virtualenv

howler-project:
  git.latest:
    - name: https://github.com/iofun/howler.git
    - target: /home/asterisk/howler
    - rev: master
    - user: asterisk