#!/bin/bash

TAR=$1_perf.tar
EMAIL=jaegeuk.kim@huawei.com

if [ -z $1 ]; then
	echo "Usage: need DATE"
	exit
fi

echo "Info: copy fs_mark/$1 from perf"
rm -rf fs_mark/$1 2>/dev/null
mkdir fs_mark/$1 2>/dev/null
rsync -r --delete-excluded --delete perf:/root/xfstests-f2fs/fs_log.txt fs_mark/$1/

echo "Info: copy fxmark/$1 from perf"
rm -rf fxmark/$1 2>/dev/null
mkdir fxmark/$1 2>/dev/null
mkdir fxmark/$1/ramdisk 2>/dev/null
mkdir fxmark/$1/nvme 2>/dev/null
rsync -r --delete-excluded --delete perf:/root/fxmark-f2fs/fxmark_ramdisk/* fxmark/$1/ramdisk
rsync -r --delete-excluded --delete perf:/root/fxmark-f2fs/fxmark_nvme/* fxmark/$1/nvme

echo "Info: copy phoronix/$1 from perf"
rm -rf phoronix/$1 2>/dev/null
mkdir phoronix/$1 2>/dev/null
rsync -r --delete-excluded --delete perf:/var/www/html/test-results/20??* phoronix/$1/
rsync -r --delete-excluded --delete perf:/var/www/html/test-results/merge-* phoronix/$1/
ls phoronix/$1 | grep merge

echo -n "Send email? (Use Ctrl-C to cancel) "
read ans

echo "Info: tar $1 into $TAR"
tar -cvf $TAR $1/ >/dev/null 2>/dev/null

if [ -z $ans ]; then
	echo Sent
	echo RESULTS | mutt -s "Test results" $EMAIL -a $TAR
fi

rm $TAR
