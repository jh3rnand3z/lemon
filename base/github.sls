# Watch for changes to a git repo and call highstate on updates
lemon-project:
  git.latest:
    - name: git@github.com/iofun/lemon
    - target: /usr/src
    - rev: master
  cmd.run:
    - creates: /srv/salt
    - name: "ln -s /usr/src/lemon /srv/salt"
  cmd.wait:
    - name: "salt '*' state.highstate"
    - cwd: /srv/salt
    - watch:
      - git: lemon-project