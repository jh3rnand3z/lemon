base:

    '*':
        - settings

rtc:

    ast_workers_1:
        - match: nodegroup
        - asterisk
        - odbc

    fs_workers_1:
        - match: nodegroup
        - freeswitch
        - odbc