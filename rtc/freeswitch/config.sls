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

conf/autoload/switch.conf.xml:
    file.managed:
        - name: /usr/local/freeswitch/conf/autoload/switch.conf.xml
        - source: salt://freeswitch/config/conf/autoload/switch.conf.xml

init.d/freeswitch:
    file.managed:
        - name: /etc/init.d/freeswitch
        - source: salt://freeswitch/config/init.d.config
        - mode: 700

update-rc.d freeswitch:
    cmd.run:
        - name: "update-rc.d freeswitch defaults"