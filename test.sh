#!/bin/bash
sortie () {
	echo annulé
	pkill emerge
#	exit 1
}

(
emerge -pvuDN @world 2>&1 > /tmp/upgrade-portage.log &
while true; do
	sleep .5;
	echo `tail -n 1 /tmp/upgrade-portage.log | sed 's/^/# /'`
done
) | zenity --progress --pulsate --width 500 || pkill emerge

rm /tmp/upgrade-portage.log
exit 0