#!/bin/bash
version=1.1
helpfile="\n\n Usage - $0  'directory to file' 'searchword'\n\nShow help with $0 -h\n\n
               This program searches for a searchword and printes that line in a live file\n\n"
while getopts ":hvd:" opt; do
  case ${opt} in
    h )
        echo -e $helpfile
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
if [ $OPTIND -eq 1 ]; then echo -e "\n\nNo options were passed\n$helpfile"; fi
shift $((OPTIND -1))
