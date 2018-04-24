#!/bin/bash
termite --geometry=1280x800 -t tmux-weechat -e "tmux new-session -s weechat \; send-keys 'weechat' C-m \;"
