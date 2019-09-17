#!/bin/bash
helpfile="\n\nHey, good you tried this! We are happy to show you the help file:\n\n
                 Usage - $0  'directory to file' 'searchword'\n\nShow help with $0 -h\n\n
                   This program searches for a searchword and printes that line in a live file\n\n"
while getopts ":hd:" opt; do
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
  esac
done
shift $((OPTIND -1))
