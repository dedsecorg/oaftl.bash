#!/bin/bash
#Variables for making easy changes.
version=1.1 #Version number
description="This program searches for a searchword and printes that line in a live file|\n|\n|"
helpfile="|                                   OAFTL                                       |\n|                                                                               |\n|Usage - $0  'directory to file' 'searchword'                       |                                          \n|Show this help menu with $0 -h                                     |\n|                                                                               |\n|                                                                               |"
#Options:
while getopts ":hvd:" opt; do
  case ${opt} in
    h ) echo -e "________________________________________________________________________________"
	echo -e "$helpfile"
	echo -e "________________________________________________________________________________"
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
