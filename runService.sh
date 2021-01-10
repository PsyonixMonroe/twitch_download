#!/bin/sh

#
# start youtube-dl trying to save a currently running stream at LINK
# if it isn't live, or when it ends, sleep COOLDOWN seconds and try again
#


youtube-dl -U

pushd /mnt/vods
while true
do
	echo "checking for stream"
	youtube-dl ${LINK}
	echo "youtube-dl exit, sleep for ${COOLDOWN} seconds"
	sleep ${COOLDOWN}s
done
popd
