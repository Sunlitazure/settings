#!/bin/env bash

SESSION_NAME=$1

tmux has-session -t ${SESSION_NAME}

if [ $? != 0 ]
then
	tmux new-session -s ${SESSION_NAME} -d

	tmux new-window -t ${SESSION_NAME}
	tmux new-window -t ${SESSION_NAME}
	
	tmux split-window -h -t ${SESSION_NAME}:0
	tmux split-window -h -t ${SESSION_NAME}:1
	tmux split-window -h -t ${SESSION_NAME}:2

	#run commands using:
	#tmux send-keys -t ${SESSION_NAME}:#.# 'command to send' C-m
	# #.# indicates window.pane, C-m is the enter command

	tmux select-window -t ${SESSION_NAME}:0

fi

tmux attach -t ${SESSION_NAME}
