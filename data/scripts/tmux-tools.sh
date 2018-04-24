#!/bin/bash
termite --geometry=1280x800 -t tmux-tools -e "tmux new-session -s cliTools \; \
  split-window -h -p 50\; \
  select-pane -t 0 \; \
  send-keys 'tremc' C-m \; \
  split-window -v -p 60\; \
  select-pane -t 2 \; \
  send-keys 'ncmpcpp' C-m \; \
  split-window -v -p 60\; \
  send-keys 'htop' C-m \;"
