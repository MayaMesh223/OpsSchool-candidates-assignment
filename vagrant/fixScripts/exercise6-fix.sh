#!/bin/bash

#defining which server I am on and what the destination is
if [[ $HOSTNAME == "server1" ]];
then
 destServer=server2
else
 destServer=server1
fi

target=${!#}
totalSize=0

# copying files and finding file size in bytes
for argval in "$@"
do
  if [[ $argval != $target ]];
  then
   scp -r $argval vagrant@$destServer:$target
   filesize=$(stat -c%s $argval)
   ((totalSize+=$filesize))
  fi
done

echo "$totalSize"
