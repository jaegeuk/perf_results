# LOG_FILE = logs/2016-11-17-16-34-44.503016/fxmark.log
# DIRECTIO = bufferedio,directio
# MODEL_NAME = Intel(R) Xeon(R) CPU E5-2630 v3 @ 2.40GHz
# MEDIA_TYPES = ssd,hdd,ramdisk,nvme,mem
# DISK_SIZE = 64G
# CORE_SEQ = 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
# NUM_TEST_CONF = 288
# PHYSICAL_CHIPS = 2
# SYSTEM = Linux perf 4.9.0-rc1+ #75 SMP Thu Oct 20 16:49:49 PDT 2016 x86_64 x86_64 x86_64 GNU/Linux
# FS_TYPES = ext4,btrfs,f2fs
# SMT_LEVEL = 2
# DURATION = 2s
# CORE_PER_CHIP = 8
# BENCH_TYPES = DWAL,DWOL,DWOM,DWSL,DWTL,DRBH,DRBM,DRBL
# NCORES = 1,2,4,8,12,16

set term pdfcairo size 6.8999999999999995in,13.799999999999999in font ',10'
set_out='set output "`if test -z $OUT; then echo sc.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 6,3

set title 'ramdisk:DRBH:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DRBH:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DRBH:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DRBH:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DRBH:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DRBH:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DRBH:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DRBH:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DRBL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DRBL:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DRBL:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DRBL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DRBL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DRBL:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DRBL:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DRBL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DRBM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DRBM:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DRBM:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DRBM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DRBM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DRBM:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DRBM:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DRBM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWAL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DWAL:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DWAL:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DWAL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWAL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DWAL:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DWAL:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DWAL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWOL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DWOL:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DWOL:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DWOL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWOL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DWOL:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DWOL:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DWOL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWOM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DWOM:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DWOM:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DWOM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWOM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DWOM:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DWOM:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DWOM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWSL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DWSL:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DWSL:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DWSL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWSL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DWSL:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DWSL:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DWSL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWTL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DWTL:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DWTL:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DWTL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWTL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:btrfs:DWTL:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'ramdisk:ext4:DWTL:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'ramdisk:f2fs:DWTL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

unset multiplot
set output
