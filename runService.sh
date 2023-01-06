#!/bin/sh

#
# start youtube-dl trying to save a currently running stream at LINK
# if it isn't live, or when it ends, sleep COOLDOWN seconds and try again
#
# if DATE is supplied, we will use that with --dateafter to filter the 
# videos to download
#

youtube-dl -U

OPT=""
if [ "x${DATE}x" != "xx" ]; then
	OPT="--dateafter ${DATE} "
fi

pushd /mnt/vods
while true
do
	echo "checking for stream (youtube-dl version: `youtube-dl --version`)"
	youtube-dl ${OPT}${LINK}
	echo "youtube-dl exit, sleep for ${COOLDOWN} seconds"
	sleep ${COOLDOWN}s
done
popd
