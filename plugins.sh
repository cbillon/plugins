#!/bin/bash

source includes/functions.cfg

DIFF_DAYS=1
DEBUG=false
RACINE=$(pwd)
# while loop, and getopts

while getopts "h?df:v:" opt
do
	# case statement
	case "${opt}" in
	h|\?)
		show_help
		# exit code
		exit 0
		;;
	d) debug=true ;;
  f) filename=${OPTARG} ;;
  v) moodle_version=${OPTARG} ;;
  esac
done

info Start
[ "$debug" = true ] && info debug: "$debug"

get_pluglist "$DIFF_DAYS"

#check file

[[ ! -f "$filename" ]] && error "$filename" not exists && exit 1

while read -r line; do    
    plugin=$(echo $line | cut -f 1 -d " ")
    is_moodleversion_supported "$plugin" "$moodle_version"
done < "$filename"

info "That's All!"