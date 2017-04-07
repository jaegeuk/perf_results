# LOG_FILE = logs/2017-04-06-13-10-57.102897/fxmark.log
# CORE_PER_CHIP = 8
# SMT_LEVEL = 2
# MODEL_NAME = Intel(R) Xeon(R) CPU E5-2630 v3 @ 2.40GHz
# DIRECTIO = bufferedio,directio
# CORE_SEQ = 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
# NCORES = 1,2,4,8,12,16
# DISK_SIZE = 64G
# FS_TYPES = ext4,btrfs,f2fs
# NUM_TEST_CONF = 288
# PHYSICAL_CHIPS = 2
# BENCH_TYPES = DWAL,DWOL,DWOM,DWSL,DWTL,DRBH,DRBM,DRBL
# MEDIA_TYPES = ssd,hdd,ramdisk,nvme,mem
# DURATION = 2s
# SYSTEM = Linux perf 4.11.0-rc3+ #116 SMP Mon Mar 27 10:47:58 PDT 2017 x86_64 x86_64 x86_64 GNU/Linux

set term pdfcairo size 6.8999999999999995in,13.799999999999999in font ',10'
set_out='set output "`if test -z $OUT; then echo sc.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 6,3

set title 'nvme:DRBH:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DRBH:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DRBH:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DRBH:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBH:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DRBH:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DRBH:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DRBH:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DRBL:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DRBL:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DRBL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DRBL:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DRBL:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DRBL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DRBM:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DRBM:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DRBM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DRBM:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DRBM:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DRBM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWAL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DWAL:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DWAL:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DWAL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWAL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DWAL:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DWAL:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DWAL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWOL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DWOL:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DWOL:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DWOL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWOL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DWOL:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DWOL:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DWOL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWOM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DWOM:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DWOM:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DWOM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWOM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DWOM:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DWOM:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DWOM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWSL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DWSL:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DWSL:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DWSL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWSL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DWSL:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DWSL:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DWSL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWTL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DWTL:bufferedio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DWTL:bufferedio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DWTL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWTL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:btrfs:DWTL:directio.dat' using 1:2 title 'btrfs' with lp ps 0.5, 'nvme:ext4:DWTL:directio.dat' using 1:2 title 'ext4' with lp ps 0.5, 'nvme:f2fs:DWTL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

unset multiplot
set output
