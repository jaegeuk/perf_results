
tiotest -a $i -f 1024 -b $((512*1024)) -t 1 -k 1 -k 2 -k 3 -d /data/

tiotest -a $i -f 1024 -b 4096 -r 50000 -t 1 -k 0 -k 2 -k 3 -d /data/
