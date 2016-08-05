#!/bin/bash

TAR=perf.tar
EMAIL=jaegeuk.kim@huawei.com

if [ -z $1 ]; then
	echo "Usage: need DATE"
	exit
fi

mkdir $1 2>/dev/null
rm -rf $1/*

echo "Info: copy $1/fxmark from perf"
rsync -r --delete-excluded --delete perf:/root/fxmark/fxmark_nvme $1/

echo "Info: copy $1/phoronix from perf"
mkdir $1/phoronix
rsync -r --delete-excluded --delete perf:/var/www/html/test-results/20??* $1/phoronix/
rsync -r --delete-excluded --delete perf:/var/www/html/test-results/merge-* $1/phoronix/

echo "Info: tar $1 into $TAR"
tar -cvf $TAR $1/ >/dev/null 2>/dev/null

echo -n "Send email? (Use Ctrl-C to cancel) "
read ans

if [ -z $ans ]; then
	echo Sent
	echo RESULTS | mutt -s "Test results" $EMAIL -a $TAR
fi

rm $TAR
