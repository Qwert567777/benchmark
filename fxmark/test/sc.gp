# LOG_FILE = fxmark.log
# SYSTEM = Linux lass 4.13.0-ziggurat4 #1 SMP Fri Dec 11 05:42:45 PST 2020 x86_64 x86_64 x86_64 GNU/Linux
# DISK_SIZE = 8G
# DURATION = 15s
# DIRECTIO = bufferedio,directio
# MEDIA_TYPES = ssd,hdd,NVMM,mem
# FS_TYPES = ext4,ext4_data_jnl,xfs,ext4_dax,xfs_dax,btrfs,f2fs,NOVA,pmfs
# BENCH_TYPES = DWAL,DWOL,DWOM,DWSL,MWRL,MWRM,MWCL,MWCM,MWUM,MWUL,DWTL,dbench_client,MRPL,MRPM,MRPH,MRDM,MRDL,DRBH,DRBM,DRBL
# NCORES = 1,2,4,7,15,21,28,30,35,42,45,49,56,60,63,70,75,77,84,90,98,105,112,120
# CORE_SEQ = 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119
# MODEL_NAME = Intel(R) Xeon(R) CPU E7-8870 v2 @ 2.30GHz
# PHYSICAL_CHIPS = 8
# CORE_PER_CHIP = 15
# SMT_LEVEL = 1
# NUM_TEST_CONF = 24

set term pdfcairo size 2.3in,2.3in font ',10'
set_out='set output "`if test -z $OUT; then echo sc.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 1,1

set title 'NVMM:DWOM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'NVMM:NOVA:DWOM:directio.dat' using 1:2 title 'NOVA' with lp ps 0.5

unset multiplot
set output
