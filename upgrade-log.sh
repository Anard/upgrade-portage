#!/bin/sh
# Check existence of log file for upgrade-portage, create if necessary and cut file to maxSize
# If a file named maxSize is found in log directory, use this value for maxSize
# USAGE : upgrade-log.sh LOG_FILE

[ $1 ] || exit 1
logFile="$1"
logDir="${logFile%/*}"
# get maxSize or init it
if [ -f "${logDir}/maxSize" ]; then
	maxSize=$( cat "${logDir}/maxSize" )
	[ -n "${maxSize}" ] && [ "${maxSize}" -eq "${maxSize}" ] 2>/dev/null;
	[ $? -gt 0 ] && unset maxSize
fi
[ -n "${maxSize}" ] || maxSize=10000

# clean log file
if [ -f "${logFile}" ]; then
	maxSize=10000 # max size in bytes (1ko=1000)
	while [ $( wc -c "${logFile}" | cut -d' ' -f1 ) -gt ${maxSize} ]; do
		logs=( $( grep -n -e "^###.*###$" "${logFile}" | cut -d: -f1 ) )
		# remove first log
		if [ ${#logs[@]} -gt 1 ]; then
			sed -i "1,$(( ${logs[1]}-1 ))d" "${logFile}"
		# delete whole file
		else rm "${logFile}"
		fi
	done
	
# create upgrade-portage log directory
else mkdir -p "$logDir"
fi
exit 0
