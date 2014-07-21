include:
    - freeswitch

conf/vars.xml:
    file.managed:
        - name: /usr/local/freeswitch/conf/vars.xml
        - source: salt://freeswitch/config/conf/vars.xml

conf/sip_profiles/internal.xml:
    file.managed:
        - name: /usr/local/freeswitch/conf/sip_profiles/internal.xml
        - source: salt://freeswitch/config/conf/sip_profiles/internal.xml

conf/sip_profiles/external.xml:
    file.managed:
        - name: /usr/local/freeswitch/conf/sip_profiles/external.xml
        - source: salt://freeswitch/config/conf/sip_profiles/external.xml




