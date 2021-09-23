#!/bin/bash
emerge -pvuDN @world 2>&1 > /tmp/port.log &
(
	while true; do
		sleep .5;
		echo `tail -n 1 /tmp/port.log | sed 's/^/# /'`
	done
) | ( zenity --progress --auto-kill --pulsate --width 500 || pkill emerge )