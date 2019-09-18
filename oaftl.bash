#!/bin/bash
#Variables for making easy changes.
version=1.1 #Version number
description="\n\nThis program searches for a searchword and printes that line in a live file.\n\nIt also can be used as 'tail -f -n +1' without searchword\n"

helpfile="________________________________________________________________________________\n|                                  OAFTL - Helpfile                             |\n|                                                                               |\n|Usage - $0  'directory to file' 'searchword'                         |                                          \n|Show this help menu with $0 -h                                       |\n|                                                                               |\n|                                                                               |\n________________________________________________________________________________"
#Options:
while getopts ":hvd:" opt; do
  case ${opt} in
    h ) echo -e "$description"
	echo -e "$helpfile"
	exit
      ;;
    d )
        tail -f -n +1 "$2" | grep --line-buffered "$3"
      ;;
    \? )
	echo "Invalid option: $OPTARG" 1>&2
      ;;
    : )
	echo "Invalid option: '$OPTARG' requires an argument" 1>&2
      ;;
    v )
	echo "Version: $version"
      ;;
  esac
done
 if [ $OPTIND -eq 1 ]
	then
	 echo -e "\n\nNo options were passed\n\n$helpfile"
 fi
shift $((OPTIND -1))
