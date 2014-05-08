include:
    - requirements

/home/admin/projects/mango:
    virtualenv.managed:
        - no_site_packages: True
        - runas: admin
        - requirements: salt://mango/requirements.txt
        - require:
            - pkg: python-dev
            - pkg: python-virtualenv
