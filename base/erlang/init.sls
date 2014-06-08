erlang:
  pkgrepo.managed:
    - name: deb http://packages.erlang-solutions.com/debian wheezy contrib
    - file: /etc/apt/sources.list.d/erlang.list
    - key_url: http://packages.erlang-solutions.com/debian/erlang_solutions.asc
    - require_in:
      - pkg: erlang

  pkg.latest:
    - name: erlang
    - refresh: True