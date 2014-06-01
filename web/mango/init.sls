include:
    - requirements

/home/admin/venv/mango:
    virtualenv.managed:
        - no_site_packages: True
        - user: admin
        - requirements: salt://mango/requirements.txt
        - require:
            - pkg: python-dev
            - pkg: python-pip
            - pkg: python-virtualenv

mango-project:
  git.latest:
    - name: https://github.com/iofun/mango.git
    - target: /home/admin/mango
    - rev: master
    - user: admin