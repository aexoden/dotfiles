# After trying various things, including limits.conf and systemd's user.conf,
# this seems to be the only way to actually get ulimit to change in a desktop
# session. (SSH sessions seem correctly set by the other options.) If you have
# any other ideas, please let me know.

ulimit -n 65536
