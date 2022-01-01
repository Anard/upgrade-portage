#!/bin/sh
# Check existence of log file for upgrade-portage, create if necessary and cut file to maxSize
# If a file named maxSize is found in log directory, use this value for maxSize
# USAGE : upgrade-log.sh LOG_FILE

MAX_SIZE="10k" # default one
[ $1 ] || exit 1
logFile="$1"
logDir="${logFile%/*}"
# function to synthetize size
get_size () {
	[ $1 ] || exit 1
	local size=$1
	unset unit
	while [ ${size} ] && [ ! ${unit} ]; do
		case ${size: -1} in
			[0-9])	# break
				unit=1;;
			'o'|'O'|'b'|'B')	# cut
				size=${size:0:-1};;
			'k'|'K')
				unit=1000;;
			'm'|'M')
				unit=1000000;;
			'g'|'G')
				unit=1000000000;;
			't'|'T')
				unit=1000000000000;;
			*)
				unset size;;
		esac
	done
	[ $unit ] && [ $unit -gt 1 ] && size=${size:0:-1}

	if [ -n "${size}" ] && [ "${size}" -eq "${size}" ] 2>/dev/null; then
		size=$(( ${size} * ${unit} ))
		echo ${size}
	fi
	return 0
}

# does log file exists ? ...
if [ -f "${logFile}" ]; then
	# get maxSize or init it
	[ -f "${logDir}/maxSize" ] && maxSize=$( get_size `cat "${logDir}/maxSize"` )
	if [ ! $maxSize ]; then
		echo "Using default value for maxSize (${MAX_SIZE})"
		maxSize=$( get_size ${MAX_SIZE} )
	else echo "Using customized value for maxSize (`cat "${logDir}/maxSize"`)"
	fi

	# clean log file
	while [ $( wc -c "${logFile}" | cut -d' ' -f1 ) -gt ${maxSize} ]; do
		logs=( $( grep -n -e "^###.*###$" "${logFile}" | cut -d: -f1 ) )
		# remove first log
		if [ ${#logs[@]} -gt 1 ]; then
			sed -i "1,$(( ${logs[1]}-1 ))d" "${logFile}"
		# delete whole file
		else rm "${logFile}"
		fi
	done
	
# ... or create upgrade-portage log directory
else mkdir -p "$logDir"
fi
exit 0
