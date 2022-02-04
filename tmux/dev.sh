#!/bin/sh
tmux new-session -s dev \; \
rename-window "projeto" \; \
send 'nvim .' ENTER \; \
split-window -h \; \
resize-pane -R 40 \; \
split-window -v \; \
send 'htop' ENTER \; \
attach;
