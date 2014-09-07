base:

    '*':
        - settings


rtc:

    ast_workers_1:
        - match: nodegroup
        - asterisk
        - freeswitch
        - odbc

    fs_workers_1:
        - match: nodegroup
        - freeswitch
        - asterisk
        - odbc


web:

    web_workers_1:
        - match: nodegroup
        - mango
        - nginx
        - supervisor

    web_workers_2:
        - match: nodegroup
        - mango
        - nginx
        - supervisor