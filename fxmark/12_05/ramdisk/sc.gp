# LOG_FILE = logs/2016-12-03-09-59-12.620537/fxmark.log
# NCORES = 1,2,4,8,12,16
# FS_TYPES = f2fs
# BENCH_TYPES = DWAL,DWOL,DWOM,DWSL,DWTL,DRBH,DRBM,DRBL
# SMT_LEVEL = 2
# PHYSICAL_CHIPS = 2
# SYSTEM = Linux perf 4.9.0-rc6+ #76 SMP Wed Nov 23 12:16:58 PST 2016 x86_64 x86_64 x86_64 GNU/Linux
# NUM_TEST_CONF = 96
# MEDIA_TYPES = ssd,hdd,ramdisk,nvme,mem
# DISK_SIZE = 64G
# DIRECTIO = bufferedio,directio
# MODEL_NAME = Intel(R) Xeon(R) CPU E5-2630 v3 @ 2.40GHz
# DURATION = 2s
# CORE_SEQ = 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
# CORE_PER_CHIP = 8

set term pdfcairo size 6.8999999999999995in,13.799999999999999in font ',10'
set_out='set output "`if test -z $OUT; then echo sc.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 6,3

set title 'ramdisk:DRBH:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DRBH:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DRBH:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DRBH:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DRBL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DRBL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DRBL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DRBL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DRBM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DRBM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DRBM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DRBM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWAL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DWAL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWAL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DWAL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWOL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DWOL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWOL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DWOL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWOM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DWOM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWOM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DWOM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWSL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DWSL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWSL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DWSL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWTL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DWTL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'ramdisk:DWTL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'ramdisk:f2fs:DWTL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

unset multiplot
set output
