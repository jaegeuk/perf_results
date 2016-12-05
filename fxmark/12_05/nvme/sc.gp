# LOG_FILE = logs/2016-12-03-10-40-54.446318/fxmark.log
# MEDIA_TYPES = ssd,hdd,ramdisk,nvme,mem
# DISK_SIZE = 64G
# DIRECTIO = bufferedio,directio
# SYSTEM = Linux perf 4.9.0-rc6+ #76 SMP Wed Nov 23 12:16:58 PST 2016 x86_64 x86_64 x86_64 GNU/Linux
# CORE_SEQ = 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
# SMT_LEVEL = 2
# MODEL_NAME = Intel(R) Xeon(R) CPU E5-2630 v3 @ 2.40GHz
# PHYSICAL_CHIPS = 2
# FS_TYPES = f2fs
# CORE_PER_CHIP = 8
# NUM_TEST_CONF = 96
# NCORES = 1,2,4,8,12,16
# BENCH_TYPES = DWAL,DWOL,DWOM,DWSL,DWTL,DRBH,DRBM,DRBL
# DURATION = 2s

set term pdfcairo size 6.8999999999999995in,13.799999999999999in font ',10'
set_out='set output "`if test -z $OUT; then echo sc.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 6,3

set title 'nvme:DRBH:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBH:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBH:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBH:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWAL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWAL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWAL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWAL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWOL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWOL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWOL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWOL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWOM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWOM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWOM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWOM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWSL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWSL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWSL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWSL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWTL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWTL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWTL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWTL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

unset multiplot
set output
