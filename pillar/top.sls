base:

    '*':
        - settings


rtc:

    rtc_workers_1:
        - match: nodegroup
        - asterisk
        - odbc