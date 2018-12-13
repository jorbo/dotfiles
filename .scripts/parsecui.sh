#!/bin/sh

chromium --app="http://ui.parsecgaming.com" &
xfce4-terminal -e 'parsecd app_daemon=1'
