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