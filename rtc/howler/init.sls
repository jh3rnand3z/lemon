include:
    - requirements

/root/venv/howler:
    virtualenv.managed:
        - no_site_packages: True
        - user: root
        - requirements: salt://howler/requirements.txt
        - require:
            - pkg: python-dev
            - pkg: python-pip
            - pkg: python-virtualenv

howler-project:
  git.latest:
    - name: https://github.com/iofun/howler.git
    - target: /root/howler
    - rev: master
    - user: root