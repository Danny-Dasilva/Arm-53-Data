Architecture:        aarch64
Byte Order:          Little Endian
CPU(s):              4
On-line CPU(s) list: 0-3
Thread(s) per core:  1
Core(s) per socket:  4
Socket(s):           1
NUMA node(s):        1
Vendor ID:           ARM
Model:               4
Model name:          Cortex-A53
Stepping:            r0p4
CPU max MHz:         1500.0000
CPU min MHz:         500.0000
BogoMIPS:            16.66
L1d cache:           unknown size
L1i cache:           unknown size
L2 cache:            unknown size
NUMA node0 CPU(s):   0-3
Flags:               fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid
================================================================================
/root/i-benchmarks/word2vec/bin
perf stat -o ../data/word2vec_perf_output_1614963943217855862.txt --per-core -a taskset -c 0-3 ./word2vec -train ../data/text8_1.7mb -output ../data/text8-vector.bin -cbow 1 -size 200 -window 8 -negative 25 -hs 0 -sample 1e-4 -threads 4 -binary 1 -iter 15
Starting training using file ../data/text8_1.7mb
Vocab size: 5847
Words in train file: 252418
Alpha: 0.000200  Progress: 99.92%  Words/thread/sec: 15.07k  # started on Fri Mar  5 17:05:43 2021


 Performance counter stats for 'system wide':

S0-C0           1           67430.63 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1              10306      context-switches          #    0.153 K/sec                  
S0-C0           1                655      cpu-migrations            #    0.010 K/sec                  
S0-C0           1                799      page-faults               #    0.012 K/sec                  
S0-C0           1        97012640061      cycles                    #    1.439 GHz                    
S0-C0           1        58154268006      instructions              #    0.60  insn per cycle         
S0-C0           1         8480915677      branches                  #  125.772 M/sec                  
S0-C0           1           69690406      branch-misses             #    0.82% of all branches        
S0-C1           1           67430.64 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1              10158      context-switches          #    0.151 K/sec                  
S0-C1           1                718      cpu-migrations            #    0.011 K/sec                  
S0-C1           1              79770      page-faults               #    0.001 M/sec                  
S0-C1           1        99926338126      cycles                    #    1.482 GHz                    
S0-C1           1        59514807168      instructions              #    0.60  insn per cycle         
S0-C1           1         8530100635      branches                  #  126.502 M/sec                  
S0-C1           1           67876396      branch-misses             #    0.80% of all branches        
S0-C2           1           67430.63 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               7365      context-switches          #    0.109 K/sec                  
S0-C2           1                441      cpu-migrations            #    0.007 K/sec                  
S0-C2           1                881      page-faults               #    0.013 K/sec                  
S0-C2           1        96749203351      cycles                    #    1.435 GHz                    
S0-C2           1        58285890493      instructions              #    0.60  insn per cycle         
S0-C2           1         8490459766      branches                  #  125.914 M/sec                  
S0-C2           1           65866417      branch-misses             #    0.78% of all branches        
S0-C3           1           67430.63 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1              16386      context-switches          #    0.243 K/sec                  
S0-C3           1                693      cpu-migrations            #    0.010 K/sec                  
S0-C3           1               1400      page-faults               #    0.021 K/sec                  
S0-C3           1        96848731675      cycles                    #    1.436 GHz                    
S0-C3           1        58088317299      instructions              #    0.60  insn per cycle         
S0-C3           1         8472232884      branches                  #  125.644 M/sec                  
S0-C3           1           68569414      branch-misses             #    0.81% of all branches        

      67.433184767 seconds time elapsed

perf stat -o ../data/word2vec_perf_output_no_branch_1614963943221111833.txt --per-core -a taskset -c 0-3 ./word2vec_no-guess-branch-probability -train ../data/text8_3.3mb -output ../data/text8-vector.bin -cbow 1 -size 200 -window 8 -negative 25 -hs 0 -sample 1e-4 -threads 4 -binary 1 -iter 15
Starting training using file ../data/text8_3.3mb
Vocab size: 9546
Words in train file: 524166
Alpha: 0.000005  Progress: 100.43%  Words/thread/sec: 28.95k  # started on Fri Mar  5 17:06:50 2021


 Performance counter stats for 'system wide':

S0-C0           1           74634.75 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1              18098      context-switches          #    0.242 K/sec                  
S0-C0           1                742      cpu-migrations            #    0.010 K/sec                  
S0-C0           1                750      page-faults               #    0.010 K/sec                  
S0-C0           1       106189023184      cycles                    #    1.423 GHz                    
S0-C0           1        41850254175      instructions              #    0.39  insn per cycle         
S0-C0           1         1329925368      branches                  #   17.819 M/sec                  
S0-C0           1           67763089      branch-misses             #    5.10% of all branches        
S0-C1           1           74635.13 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1              21639      context-switches          #    0.290 K/sec                  
S0-C1           1               1051      cpu-migrations            #    0.014 K/sec                  
S0-C1           1              81065      page-faults               #    0.001 M/sec                  
S0-C1           1       108613767094      cycles                    #    1.455 GHz                    
S0-C1           1        43194734315      instructions              #    0.40  insn per cycle         
S0-C1           1         1550655633      branches                  #   20.776 M/sec                  
S0-C1           1           62540519      branch-misses             #    4.03% of all branches        
S0-C2           1           74635.08 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1              18442      context-switches          #    0.247 K/sec                  
S0-C2           1               1164      cpu-migrations            #    0.016 K/sec                  
S0-C2           1               1358      page-faults               #    0.018 K/sec                  
S0-C2           1       102355473065      cycles                    #    1.371 GHz                    
S0-C2           1        40244621064      instructions              #    0.39  insn per cycle         
S0-C2           1         1267395918      branches                  #   16.981 M/sec                  
S0-C2           1           61379054      branch-misses             #    4.84% of all branches        
S0-C3           1           74635.04 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1              21781      context-switches          #    0.292 K/sec                  
S0-C3           1               1044      cpu-migrations            #    0.014 K/sec                  
S0-C3           1                686      page-faults               #    0.009 K/sec                  
S0-C3           1       104732640917      cycles                    #    1.403 GHz                    
S0-C3           1        41163979734      instructions              #    0.39  insn per cycle         
S0-C3           1         1286674976      branches                  #   17.240 M/sec                  
S0-C3           1           62444753      branch-misses             #    4.85% of all branches        

      74.636739675 seconds time elapsed

================================================================================
++ pwd
++ date +%s%N
+ GREP_PERF=/root/i-benchmarks/MPI/bin/grep_perf_output_1614964085880980937.txt
+ NUMBER_OF_THREADS=16
+ getopts t:o:h o
+ case $o in
+ NUMBER_OF_THREADS=4
+ getopts t:o:h o
+ source /etc/profile
++ '[' -x /usr/bin/id ']'
++ '[' -z 0 ']'
+++ /usr/bin/id -un
++ USER=root
++ LOGNAME=root
++ MAIL=/var/spool/mail/root
++ '[' 0 = 0 ']'
++ pathmunge /usr/sbin
++ case ":${PATH}:" in
++ pathmunge /usr/local/sbin
++ case ":${PATH}:" in
+++ /usr/bin/hostname
++ HOSTNAME=
++ HISTSIZE=1000
++ '[' '' = ignorespace ']'
++ export HISTCONTROL=ignoredups
++ HISTCONTROL=ignoredups
++ export PATH USER LOGNAME MAIL HOSTNAME HISTSIZE HISTCONTROL
++ '[' 0 -gt 199 ']'
++ umask 022
++ for i in /etc/profile.d/*.sh /etc/profile.d/sh.local
++ '[' -r '/etc/profile.d/*.sh' ']'
++ for i in /etc/profile.d/*.sh /etc/profile.d/sh.local
++ '[' -r /etc/profile.d/sh.local ']'
++ unset i
++ unset -f pathmunge
++ '[' -n '5.0.3(1)-release' ']'
++ '[' -f /etc/bashrc ']'
++ export BigdataBench_HOMEMPI=/root/i-benchmarks/MPI/bin/mpi/BigDataBench_V4.0_MPI/
++ BigdataBench_HOMEMPI=/root/i-benchmarks/MPI/bin/mpi/BigDataBench_V4.0_MPI/
++ export JAVA_HOME=
++ JAVA_HOME=
++ export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/bin:/jre/bin
++ PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/bin:/jre/bin
++ export CLASSPATH=.:/jre/lib:/lib/tools.jar
++ CLASSPATH=.:/jre/lib:/lib/tools.jar
++ export JRE_HOME=/jre
++ JRE_HOME=/jre
++ export MPI_HOME=/root/i-benchmarks/MPI/bin/mpi/dest
++ MPI_HOME=/root/i-benchmarks/MPI/bin/mpi/dest
++ export HYDRA_HOST_FILE=/etc/hydra/hosts
++ HYDRA_HOST_FILE=/etc/hydra/hosts
++ export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/bin:/jre/bin:/root/i-benchmarks/MPI/bin/mpi/dest/bin
++ PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/bin:/jre/bin:/root/i-benchmarks/MPI/bin/mpi/dest/bin
++ export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/bin:/jre/bin:/root/i-benchmarks/MPI/bin/mpi/dest/bin:/root/i-benchmarks/MPI/bin/mpi/dest/bin
++ PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/bin:/jre/bin:/root/i-benchmarks/MPI/bin/mpi/dest/bin:/root/i-benchmarks/MPI/bin/mpi/dest/bin
++ export LD_LIBRARY_PATH=:/root/i-benchmarks/MPI/bin/mpi/dest/lib
++ LD_LIBRARY_PATH=:/root/i-benchmarks/MPI/bin/mpi/dest/lib
+ echo 'perf stat -o /root/i-benchmarks/MPI/bin/grep_perf_output_1614964085880980937.txt --per-core -a taskset -c 0-3 ./mpi_grep_benchmark.sh -t 4'
perf stat -o /root/i-benchmarks/MPI/bin/grep_perf_output_1614964085880980937.txt --per-core -a taskset -c 0-3 ./mpi_grep_benchmark.sh -t 4
+ perf stat -o /root/i-benchmarks/MPI/bin/grep_perf_output_1614964085880980937.txt --per-core -a taskset -c 0-3 ./mpi_grep_benchmark.sh -t 4
+ NUMBER_OF_THREADS=16
+ getopts t:h o
+ case $o in
+ NUMBER_OF_THREADS=4
+ getopts t:h o
+ cd /root/i-benchmarks/MPI/bin/mpi/BigDataBench_V4.0_MPI//MicroBenchmark/OfflineAnalytics/Grep
+ INPUT='4\ne'
+ ./run_Grep.sh
+ echo -e '4\ne'
please print your total processes
please print the pattern
Process 1 of 4 is on cac967001af3
Process 3 of 4 is on cac967001af3
##folder
##folder
Process 2 of 4 is on cac967001af3
##folder
Process 0 of 4 is on cac967001af3
##folder
process file　./data/512MB_input_17
process file　./data/512MB_input_17
process file　./data/512MB_input_17
process file　./data/512MB_input_17
process file　./data/128MB_input1
process file　./data/128MB_input1
process file　./data/128MB_input1
process file　./data/128MB_input1
process file　./data/512MB_input_2
process file　./data/512MB_input_2
process file　./data/512MB_input_2
process file　./data/512MB_input_2
process file　./data/lda_wiki1w_1
process file　./data/lda_wiki1w_1
process file　./data/lda_wiki1w_1
process file　./data/lda_wiki1w_1
process file　./data/128MB_input5
process file　./data/128MB_input5
process file　./data/128MB_input5
process file　./data/128MB_input5
process file　./data/128MB_input2
process file　./data/128MB_input2
process file　./data/128MB_input2
process file　./data/128MB_input2
process file　./data/128MB_input3
process file　./data/128MB_input3
process file　./data/128MB_input3
process file　./data/128MB_input3
process file　./data/512MB_input_12
process file　./data/512MB_input_12
process file　./data/512MB_input_12
process file　./data/512MB_input_12
process file　./data/512MB_input_10
process file　./data/512MB_input_10
process file　./data/512MB_input_10
process file　./data/512MB_input_10
process file　./data/512MB_input_8
process file　./data/512MB_input_8
process file　./data/512MB_input_8
process file　./data/512MB_input_8
process file　./data/512MB_input_3
process file　./data/512MB_input_3
process file　./data/512MB_input_3
process file　./data/512MB_input_3
process file　./data/512MB_input_7
process file　./data/512MB_input_7
process file　./data/512MB_input_7
process file　./data/512MB_input_7
process file　./data/512MB_input_11
process file　./data/512MB_input_11
process file　./data/512MB_input_11
process file　./data/512MB_input_11
process file　./data/512MB_input_9
process file　./data/512MB_input_9
process file　./data/512MB_input_9
process file　./data/512MB_input_9
process file　./data/128MB_input4
process file　./data/128MB_input4
process file　./data/128MB_input4
process file　./data/128MB_input4
process file　./data/512MB_input_6
process file　./data/512MB_input_6
process file　./data/512MB_input_6
process file　./data/512MB_input_6
process file　./data/512MB_input_15
process file　./data/512MB_input_15
process file　./data/512MB_input_15
process file　./data/512MB_input_15
process file　./data/512MB_input_13
process file　./data/512MB_input_13
process file　./data/512MB_input_13
process file　./data/512MB_input_13
process file　./data/512MB_input_18
process file　./data/512MB_input_18
process file　./data/512MB_input_18
process file　./data/512MB_input_18
process file　./data/512MB_input_4
process file　./data/512MB_input_4
process file　./data/512MB_input_4
process file　./data/512MB_input_4
process file　./data/256MB_input
process file　./data/256MB_input
process file　./data/246MB_input
process file　./data/256MB_input
process file　./data/256MB_input
process file　./data/512MB_input_5
process file　./data/246MB_input
process file　./data/246MB_input
process file　./data/246MB_input
process file　./data/512MB_input_5
process file　./data/512MB_input_5
process file　./data/512MB_input_5
process file　./data/512MB_input_16
process file　./data/512MB_input_16
process file　./data/512MB_input_16
process file　./data/512MB_input_16
process file　./data/lda_wiki1w_2
process file　./data/lda_wiki1w_2
process file　./data/lda_wiki1w_2
process file　./data/lda_wiki1w_2
process file　./data/512MB_input
process file　./data/512MB_input
process file　./data/512MB_input
process file　./data/512MB_input
process file　./data/512MB_input_14
process file　./data/512MB_input_14
process file　./data/512MB_input_14
process file　./data/512MB_input_14
Total Count 1028366326
wall clock time = 111.043
+ cd -
/root/i-benchmarks/MPI/bin
+ '[' -z '' ']'
+ cat /root/i-benchmarks/MPI/bin/grep_perf_output_1614964085880980937.txt
# started on Fri Mar  5 17:08:06 2021


 Performance counter stats for 'system wide':

S0-C0           1          111302.18 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1             168229      context-switches          #    0.002 M/sec                  
S0-C0           1               3917      cpu-migrations            #    0.035 K/sec                  
S0-C0           1               4999      page-faults               #    0.045 K/sec                  
S0-C0           1        57494804771      cycles                    #    0.517 GHz                    
S0-C0           1        40229229900      instructions              #    0.70  insn per cycle         
S0-C0           1         5512320468      branches                  #   49.526 M/sec                  
S0-C0           1          536400306      branch-misses             #    9.73% of all branches        
S0-C1           1          111302.18 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1              88163      context-switches          #    0.792 K/sec                  
S0-C1           1               3961      cpu-migrations            #    0.036 K/sec                  
S0-C1           1               5174      page-faults               #    0.046 K/sec                  
S0-C1           1        59375661414      cycles                    #    0.533 GHz                    
S0-C1           1        46886624162      instructions              #    0.79  insn per cycle         
S0-C1           1         6122599241      branches                  #   55.009 M/sec                  
S0-C1           1          407465876      branch-misses             #    6.66% of all branches        
S0-C2           1          111302.18 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1              84655      context-switches          #    0.761 K/sec                  
S0-C2           1               4583      cpu-migrations            #    0.041 K/sec                  
S0-C2           1               5032      page-faults               #    0.045 K/sec                  
S0-C2           1        64251082084      cycles                    #    0.577 GHz                    
S0-C2           1        50925568272      instructions              #    0.79  insn per cycle         
S0-C2           1         6632203169      branches                  #   59.587 M/sec                  
S0-C2           1          426580805      branch-misses             #    6.43% of all branches        
S0-C3           1          111302.18 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1              84511      context-switches          #    0.759 K/sec                  
S0-C3           1               4618      cpu-migrations            #    0.041 K/sec                  
S0-C3           1               4840      page-faults               #    0.043 K/sec                  
S0-C3           1        65072351848      cycles                    #    0.585 GHz                    
S0-C3           1        52610684140      instructions              #    0.81  insn per cycle         
S0-C3           1         6841164187      branches                  #   61.465 M/sec                  
S0-C3           1          440528062      branch-misses             #    6.44% of all branches        

     111.303960908 seconds time elapsed

perf stat -o /root/i-benchmarks/MPI/bin/lda_perf_output_1614964197448905096.txt --per-core -a taskset -c 0-3 ./mpi_lda_benchmark.sh -t 4
please print your total processes
Training data loaded
Training data loaded
Training data loaded
Iteration 0 ...
Training data loaded
Iteration 1 ...
Iteration 2 ...
Iteration 3 ...
/root/i-benchmarks/MPI/bin
# started on Fri Mar  5 17:09:57 2021


 Performance counter stats for 'system wide':

S0-C0           1            8098.43 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               1519      context-switches          #    0.188 K/sec                  
S0-C0           1                 65      cpu-migrations            #    0.008 K/sec                  
S0-C0           1               8689      page-faults               #    0.001 M/sec                  
S0-C0           1        12005848764      cycles                    #    1.482 GHz                    
S0-C0           1         7713905052      instructions              #    0.64  insn per cycle         
S0-C0           1         1006917942      branches                  #  124.335 M/sec                  
S0-C0           1           56518402      branch-misses             #    5.61% of all branches        
S0-C1           1            8098.38 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               1420      context-switches          #    0.175 K/sec                  
S0-C1           1                 46      cpu-migrations            #    0.006 K/sec                  
S0-C1           1               9661      page-faults               #    0.001 M/sec                  
S0-C1           1        12031949669      cycles                    #    1.486 GHz                    
S0-C1           1         7746427531      instructions              #    0.64  insn per cycle         
S0-C1           1         1013802718      branches                  #  125.186 M/sec                  
S0-C1           1           56229446      branch-misses             #    5.55% of all branches        
S0-C2           1            8098.34 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               1021      context-switches          #    0.126 K/sec                  
S0-C2           1                 58      cpu-migrations            #    0.007 K/sec                  
S0-C2           1               9375      page-faults               #    0.001 M/sec                  
S0-C2           1        12007513576      cycles                    #    1.483 GHz                    
S0-C2           1         7566189246      instructions              #    0.63  insn per cycle         
S0-C2           1          986255756      branches                  #  121.785 M/sec                  
S0-C2           1           55452219      branch-misses             #    5.62% of all branches        
S0-C3           1            8098.37 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               1768      context-switches          #    0.218 K/sec                  
S0-C3           1                 56      cpu-migrations            #    0.007 K/sec                  
S0-C3           1               7161      page-faults               #    0.884 K/sec                  
S0-C3           1        11989723788      cycles                    #    1.481 GHz                    
S0-C3           1         7660244218      instructions              #    0.64  insn per cycle         
S0-C3           1          998185603      branches                  #  123.258 M/sec                  
S0-C3           1           56326742      branch-misses             #    5.64% of all branches        

       8.099850855 seconds time elapsed

perf stat -o /root/i-benchmarks/MPI/bin/NaiveBayes_perf_output_1614964205676999695.txt --per-core -a taskset -c 0-3 ./mpi_naive_bayes_benchmark.sh -t 4

real	0m10.817s
user	0m41.969s
sys	0m0.415s

real	0m7.498s
user	0m29.291s
sys	0m0.312s
/root/i-benchmarks/MPI/bin
# started on Fri Mar  5 17:10:05 2021


 Performance counter stats for 'system wide':

S0-C0           1           18323.37 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               3629      context-switches          #    0.198 K/sec                  
S0-C0           1                 89      cpu-migrations            #    0.005 K/sec                  
S0-C0           1               2854      page-faults               #    0.156 K/sec                  
S0-C0           1        27178328775      cycles                    #    1.483 GHz                    
S0-C0           1        23510770838      instructions              #    0.87  insn per cycle         
S0-C0           1         4507815308      branches                  #  246.014 M/sec                  
S0-C0           1          101983754      branch-misses             #    2.26% of all branches        
S0-C1           1           18323.34 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               2386      context-switches          #    0.130 K/sec                  
S0-C1           1                 83      cpu-migrations            #    0.005 K/sec                  
S0-C1           1               3778      page-faults               #    0.206 K/sec                  
S0-C1           1        27196216650      cycles                    #    1.484 GHz                    
S0-C1           1        23553082298      instructions              #    0.87  insn per cycle         
S0-C1           1         4534689918      branches                  #  247.482 M/sec                  
S0-C1           1           98639401      branch-misses             #    2.18% of all branches        
S0-C2           1           18323.36 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               2083      context-switches          #    0.114 K/sec                  
S0-C2           1                 97      cpu-migrations            #    0.005 K/sec                  
S0-C2           1               3520      page-faults               #    0.192 K/sec                  
S0-C2           1        27214420253      cycles                    #    1.485 GHz                    
S0-C2           1        23495176619      instructions              #    0.86  insn per cycle         
S0-C2           1         4534510978      branches                  #  247.472 M/sec                  
S0-C2           1          100077384      branch-misses             #    2.21% of all branches        
S0-C3           1           18323.34 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               2816      context-switches          #    0.154 K/sec                  
S0-C3           1                101      cpu-migrations            #    0.006 K/sec                  
S0-C3           1               3716      page-faults               #    0.203 K/sec                  
S0-C3           1        27184291055      cycles                    #    1.484 GHz                    
S0-C3           1        23606105224      instructions              #    0.87  insn per cycle         
S0-C3           1         4534228039      branches                  #  247.456 M/sec                  
S0-C3           1          100048412      branch-misses             #    2.21% of all branches        

      18.325010519 seconds time elapsed

perf stat -o /root/i-benchmarks/MPI/bin/wordcounts_perf_output_1614964224071304825.txt --per-core -a taskset -c 0-3 ./mpi_wordcount_benchmark.sh -t 4
please print your total processes
Rank:3 ##
Size:4 ##
Process 3 of 4 is on cac967001af3
##folder
Rank:1 ##
Size:4 ##
Process 1 of 4 is on cac967001af3
##folder
process file　./data/116MB_input
process file　./data/116MB_input
Rank:0 ##
Size:4 ##
Process 0 of 4 is on cac967001af3
##folder
Rank:2 ##
Size:4 ##
Process 2 of 4 is on cac967001af3
##folder
process file　./data/116MB_input
process file　./data/116MB_input
Total words 16968755 Diff cnt 4 Max Cnt 6544035
wall clock time = 10.7101
/root/i-benchmarks/MPI/bin
# started on Fri Mar  5 17:10:24 2021


 Performance counter stats for 'system wide':

S0-C0           1           10812.20 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               2872      context-switches          #    0.266 K/sec                  
S0-C0           1                 45      cpu-migrations            #    0.004 K/sec                  
S0-C0           1               1768      page-faults               #    0.164 K/sec                  
S0-C0           1        16130225519      cycles                    #    1.492 GHz                    
S0-C0           1        12691773712      instructions              #    0.79  insn per cycle         
S0-C0           1         1909265639      branches                  #  176.584 M/sec                  
S0-C0           1           43964481      branch-misses             #    2.30% of all branches        
S0-C1           1           10812.18 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               1680      context-switches          #    0.155 K/sec                  
S0-C1           1                 54      cpu-migrations            #    0.005 K/sec                  
S0-C1           1               1695      page-faults               #    0.157 K/sec                  
S0-C1           1        16118898458      cycles                    #    1.491 GHz                    
S0-C1           1        12805839531      instructions              #    0.79  insn per cycle         
S0-C1           1         1921799906      branches                  #  177.744 M/sec                  
S0-C1           1           33917853      branch-misses             #    1.76% of all branches        
S0-C2           1           10812.28 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               1937      context-switches          #    0.179 K/sec                  
S0-C2           1                 44      cpu-migrations            #    0.004 K/sec                  
S0-C2           1               2068      page-faults               #    0.191 K/sec                  
S0-C2           1        16121957379      cycles                    #    1.491 GHz                    
S0-C2           1        12743956232      instructions              #    0.79  insn per cycle         
S0-C2           1         1925052108      branches                  #  178.043 M/sec                  
S0-C2           1           39380446      branch-misses             #    2.05% of all branches        
S0-C3           1           10812.24 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               2467      context-switches          #    0.228 K/sec                  
S0-C3           1                 32      cpu-migrations            #    0.003 K/sec                  
S0-C3           1               2816      page-faults               #    0.260 K/sec                  
S0-C3           1        16041188101      cycles                    #    1.484 GHz                    
S0-C3           1        12570122686      instructions              #    0.78  insn per cycle         
S0-C3           1         1891272360      branches                  #  174.920 M/sec                  
S0-C3           1           36138767      branch-misses             #    1.91% of all branches        

      10.813768104 seconds time elapsed

perf stat -o /root/i-benchmarks/MPI/bin/kmeans_perf_output_1614964234959156999.txt --per-core -a taskset -c 0-3 ./mpi_kmeans_benchmark.sh -t 4
please print your total processes
please print Kmeans clusters's number
You can find result in ./Kmeans-result file
numObjs is 112500, numCoords is 9, numClusters is 2
numObjs is 112500, numCoords is 9, numClusters is 2
numObjs is 112500, numCoords is 9, numClusters is 2
numObjs is 112500, numCoords is 9, numClusters is 2
mpi_kmeans is 0.089649 Seconds
mpi_kmeans is 0.089656 Seconds
mpi_kmeans is 0.089655 Seconds
mpi_kmeans is 0.089658 Seconds
Writing coordinates of K=2 cluster centers to file "./data/data-Kmeans.cluster_centres"
Writing membership of N=450000 data objects to file "./data/data-Kmeans.membership"

Performing **** Simple Kmeans  (MPI) ****
Num of processes = 4
Input file:        ./data/data-Kmeans
numObjs          = 450000
numCoords        = 9
numClusters      = 2
threshold        = 0.0010
I/O time           =     6.2107 sec
Computation timing =     0.1118 sec
FPCount=141749,IntCount=37800839

real	0m6.404s
user	0m22.659s
sys	0m1.759s
/root/i-benchmarks/MPI/bin
# started on Fri Mar  5 17:10:35 2021


 Performance counter stats for 'system wide':

S0-C0           1            6412.35 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               2924      context-switches          #    0.456 K/sec                  
S0-C0           1                 55      cpu-migrations            #    0.009 K/sec                  
S0-C0           1               2421      page-faults               #    0.378 K/sec                  
S0-C0           1         9527205185      cycles                    #    1.486 GHz                    
S0-C0           1         7191005746      instructions              #    0.75  insn per cycle         
S0-C0           1         1019141356      branches                  #  158.934 M/sec                  
S0-C0           1           22239735      branch-misses             #    2.18% of all branches        
S0-C1           1            6412.36 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1                256      context-switches          #    0.040 K/sec                  
S0-C1           1                 25      cpu-migrations            #    0.004 K/sec                  
S0-C1           1               3099      page-faults               #    0.483 K/sec                  
S0-C1           1         9531508131      cycles                    #    1.486 GHz                    
S0-C1           1         7218835756      instructions              #    0.76  insn per cycle         
S0-C1           1         1015325395      branches                  #  158.339 M/sec                  
S0-C1           1           31260376      branch-misses             #    3.08% of all branches        
S0-C2           1            6412.36 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               7058      context-switches          #    0.001 M/sec                  
S0-C2           1                 41      cpu-migrations            #    0.006 K/sec                  
S0-C2           1               2965      page-faults               #    0.462 K/sec                  
S0-C2           1         8549299043      cycles                    #    1.333 GHz                    
S0-C2           1         6904089001      instructions              #    0.81  insn per cycle         
S0-C2           1          752874071      branches                  #  117.410 M/sec                  
S0-C2           1           34898693      branch-misses             #    4.64% of all branches        
S0-C3           1            6412.34 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               1098      context-switches          #    0.171 K/sec                  
S0-C3           1                 40      cpu-migrations            #    0.006 K/sec                  
S0-C3           1               2360      page-faults               #    0.368 K/sec                  
S0-C3           1         9525788794      cycles                    #    1.486 GHz                    
S0-C3           1         7207621210      instructions              #    0.76  insn per cycle         
S0-C3           1         1018015221      branches                  #  158.759 M/sec                  
S0-C3           1           35540015      branch-misses             #    3.49% of all branches        

       6.413756500 seconds time elapsed

perf stat -o /root/i-benchmarks/MPI/bin/md5_perf_output_1614964241486057954.txt --per-core -a taskset -c 0-3 ./mpi_md5_benchmark.sh -t 4
please print your total processes
input is directory
process file　./data/128MB_input1
md5 compute finish
data transfer begin:
data transfer end.
data output begin
data outfile end
process file　./data/lda_wiki1w_1
md5 compute finish
data transfer begin:
data transfer end.
data output begin
data outfile end
process file　./data/128MB_input2
md5 compute finish
data transfer begin:
data transfer end.
data output begin
data outfile end
process file　./data/256MB_input
md5 compute finish
data transfer begin:
data transfer end.
data output begin
data outfile end
process file　./data/246MB_input
md5 compute finish
data transfer begin:
data transfer end.
data output begin
data outfile end
process file　./data/lda_wiki1w_2
md5 compute finish
data transfer begin:
data transfer end.
data output begin
data outfile end
time=60.8838
/root/i-benchmarks/MPI/bin
# started on Fri Mar  5 17:10:41 2021


 Performance counter stats for 'system wide':

S0-C0           1           61065.04 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1             247321      context-switches          #    0.004 M/sec                  
S0-C0           1              36262      cpu-migrations            #    0.594 K/sec                  
S0-C0           1               4502      page-faults               #    0.074 K/sec                  
S0-C0           1        37301365263      cycles                    #    0.611 GHz                    
S0-C0           1        20716800325      instructions              #    0.56  insn per cycle         
S0-C0           1         2390403959      branches                  #   39.145 M/sec                  
S0-C0           1          821045985      branch-misses             #   34.35% of all branches        
S0-C1           1           61065.04 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1             346646      context-switches          #    0.006 M/sec                  
S0-C1           1              56444      cpu-migrations            #    0.924 K/sec                  
S0-C1           1               5720      page-faults               #    0.094 K/sec                  
S0-C1           1        31672653627      cycles                    #    0.519 GHz                    
S0-C1           1        23197953925      instructions              #    0.73  insn per cycle         
S0-C1           1         1648264334      branches                  #   26.992 M/sec                  
S0-C1           1          343914947      branch-misses             #   20.87% of all branches        
S0-C2           1           61065.09 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1             331335      context-switches          #    0.005 M/sec                  
S0-C2           1              51619      cpu-migrations            #    0.845 K/sec                  
S0-C2           1               4091      page-faults               #    0.067 K/sec                  
S0-C2           1        33282599350      cycles                    #    0.545 GHz                    
S0-C2           1        24674132985      instructions              #    0.74  insn per cycle         
S0-C2           1         1809401181      branches                  #   29.631 M/sec                  
S0-C2           1          384533113      branch-misses             #   21.25% of all branches        
S0-C3           1           61065.09 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1             339281      context-switches          #    0.006 M/sec                  
S0-C3           1              56574      cpu-migrations            #    0.926 K/sec                  
S0-C3           1               5917      page-faults               #    0.097 K/sec                  
S0-C3           1        32733402577      cycles                    #    0.536 GHz                    
S0-C3           1        23729861090      instructions              #    0.72  insn per cycle         
S0-C3           1         1704673676      branches                  #   27.916 M/sec                  
S0-C3           1          342474045      branch-misses             #   20.09% of all branches        

      61.066837455 seconds time elapsed

perf stat -o /root/i-benchmarks/MPI/bin/sort_perf_output_1614964302724546327.txt --per-core -a taskset -c 0-3 ./mpi_sort_benchmark.sh -t 4
please print your total processes
Fri Mar  5 17:11:42 2021
Fri Mar  5 17:11:42 2021
Fri Mar  5 17:11:42 2021
Fri Mar  5 17:11:42 2021
##folder
##folder
##folder##folder

process file　./data/128MB_input1
process file　./data/128MB_input1
File Size:134217728
File Part Size:131072
process file　./data/128MB_input1
File Size:134217728
File Part Size:131072
process file　./data/128MB_input1
File Size:134217728
File Part Size:131072
File Size:134217728
File Part Size:131072
read to:0 
read to:0 
4 processes mandates root height of 2
read to:0 
read to:0 
read to:0 
process file　./data/256MB_input_2
File Size:268435456
File Part Size:262144
read to:0 
process file　./data/256MB_input_2
File Size:268435456
File Part Size:262144
read to:0 
process file　./data/256MB_input_2
File Size:268435456
File Part Size:262144
read to:0 
process file　./data/256MB_input_2
File Size:268435456
File Part Size:262144
read to:0 
read to:0 
read to:0 
read to:0 
4 processes mandates root height of 2
read to:0 
process file　./data/256MB_input
File Size:268435456
File Part Size:262144
read to:0 
process file　./data/256MB_input
File Size:268435456
File Part Size:262144
read to:0 
process file　./data/256MB_input
File Size:268435456
File Part Size:262144
read to:0 
process file　./data/256MB_input
File Size:268435456
File Part Size:262144
read to:0 
4 processes mandates root height of 2
read to:0 
read to:0 
read to:0 
read to:0 
process file　./data/256MB_input_1
File Size:268435456
File Part Size:262144
read to:0 
process file　./data/256MB_input_1
File Size:268435456
File Part Size:262144
read to:0 
process file　./data/256MB_input_1
File Size:268435456
File Part Size:262144
read to:0 
process file　./data/256MB_input_1
File Size:268435456
File Part Size:262144
read to:0 
read to:0 
read to:0 
read to:0 
4 processes mandates root height of 2
read to:0 
read to:0 
read to:0 
read to:0 
Total running time:15.000000 sec
Fri Mar  5 17:11:57 2021

real	0m15.829s
user	0m30.304s
sys	0m12.700s
/root/i-benchmarks/MPI/bin
# started on Fri Mar  5 17:11:42 2021


 Performance counter stats for 'system wide':

S0-C0           1           15846.87 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1              34199      context-switches          #    0.002 M/sec                  
S0-C0           1               5788      cpu-migrations            #    0.365 K/sec                  
S0-C0           1               6490      page-faults               #    0.410 K/sec                  
S0-C0           1        15011716491      cycles                    #    0.947 GHz                    
S0-C0           1         9648202244      instructions              #    0.64  insn per cycle         
S0-C0           1         1229231669      branches                  #   77.569 M/sec                  
S0-C0           1          144606177      branch-misses             #   11.76% of all branches        
S0-C1           1           15846.94 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1              41037      context-switches          #    0.003 M/sec                  
S0-C1           1               9667      cpu-migrations            #    0.610 K/sec                  
S0-C1           1               5697      page-faults               #    0.360 K/sec                  
S0-C1           1        16654690218      cycles                    #    1.051 GHz                    
S0-C1           1        11268369684      instructions              #    0.68  insn per cycle         
S0-C1           1         1462611392      branches                  #   92.296 M/sec                  
S0-C1           1           84976093      branch-misses             #    5.81% of all branches        
S0-C2           1           15846.89 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1              40932      context-switches          #    0.003 M/sec                  
S0-C2           1               9206      cpu-migrations            #    0.581 K/sec                  
S0-C2           1               5015      page-faults               #    0.316 K/sec                  
S0-C2           1        16765659843      cycles                    #    1.058 GHz                    
S0-C2           1        11290217726      instructions              #    0.67  insn per cycle         
S0-C2           1         1468299819      branches                  #   92.655 M/sec                  
S0-C2           1           87495980      branch-misses             #    5.96% of all branches        
S0-C3           1           15846.89 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1              39251      context-switches          #    0.002 M/sec                  
S0-C3           1               9476      cpu-migrations            #    0.598 K/sec                  
S0-C3           1               5288      page-faults               #    0.334 K/sec                  
S0-C3           1        16783407508      cycles                    #    1.059 GHz                    
S0-C3           1        11497321950      instructions              #    0.69  insn per cycle         
S0-C3           1         1490892623      branches                  #   94.081 M/sec                  
S0-C3           1           74754881      branch-misses             #    5.01% of all branches        

      15.848613241 seconds time elapsed

================================================================================
perf stat -o sqlite_4_threads.txt  --per-core -a taskset -c 0-3 ./sqlite_benchmark 4
SUCCESS::pthread_create() succeeded for command ./speedtest1 --size 130
SUCCESS::pthread_create() succeeded for command ./speedtest1 --size 130
SUCCESS::pthread_create() succeeded for command ./speedtest1 --size 130
SUCCESS::pthread_create() succeeded for command ./speedtest1 --size 130
-- Speedtest1 for SQLite 3.31.1 2020-01-27 19:55:54 3bfa9cc97da10598521b342961df8f
-- Speedtest1 for SQLite 3.31.1 2020-01-27 19:55:54 3bfa9cc97da10598521b342961df8f
-- Speedtest1 for SQLite 3.31.1 2020-01-27 19:55:54 3bfa9cc97da10598521b342961df8f
-- Speedtest1 for SQLite 3.31.1 2020-01-27 19:55:54 3bfa9cc97da10598521b342961df8f
 100 - 13000 INSERTs into table with no index......................  100 - 13000 INSERTs into table with no index......................  100 - 13000 INSERTs into table with no index......................  100 - 13000 INSERTs into table with no index......................    0.059s
 110 - 13000 ordered INSERTS with one index/PK.....................    0.059s
 110 - 13000 ordered INSERTS with one index/PK.....................    0.060s
 110 - 13000 ordered INSERTS with one index/PK.....................    0.063s
 110 - 13000 ordered INSERTS with one index/PK.....................    0.088s
 120 - 13000 unordered INSERTS with one index/PK...................    0.088s
 120 - 13000 unordered INSERTS with one index/PK...................    0.087s
 120 - 13000 unordered INSERTS with one index/PK...................    0.091s
 120 - 13000 unordered INSERTS with one index/PK...................    0.120s
 130 - 25 SELECTS, numeric BETWEEN, unindexed......................    0.122s
 130 - 25 SELECTS, numeric BETWEEN, unindexed......................    0.122s
 130 - 25 SELECTS, numeric BETWEEN, unindexed......................    0.115s
 130 - 25 SELECTS, numeric BETWEEN, unindexed......................    0.078s
 140 - 10 SELECTS, LIKE, unindexed.................................    0.080s
 140 - 10 SELECTS, LIKE, unindexed.................................    0.081s
   0.079s
 140 - 10 SELECTS, LIKE, unindexed.................................  140 - 10 SELECTS, LIKE, unindexed.................................    0.130s
 142 - 10 SELECTS w/ORDER BY, unindexed............................    0.134s
 142 - 10 SELECTS w/ORDER BY, unindexed............................    0.135s
 142 - 10 SELECTS w/ORDER BY, unindexed............................    0.135s
 142 - 10 SELECTS w/ORDER BY, unindexed............................    0.204s
 145 - 10 SELECTS w/ORDER BY and LIMIT, unindexed..................    0.207s
 145 - 10 SELECTS w/ORDER BY and LIMIT, unindexed..................    0.207s
 145 - 10 SELECTS w/ORDER BY and LIMIT, unindexed..................    0.209s
 145 - 10 SELECTS w/ORDER BY and LIMIT, unindexed..................    0.112s
 150 - CREATE INDEX five times.....................................    0.112s
 150 - CREATE INDEX five times.....................................    0.114s
 150 - CREATE INDEX five times.....................................    0.113s
 150 - CREATE INDEX five times.....................................    0.136s
 160 - 2600 SELECTS, numeric BETWEEN, indexed......................    0.136s
 160 - 2600 SELECTS, numeric BETWEEN, indexed......................    0.135s
 160 - 2600 SELECTS, numeric BETWEEN, indexed......................    0.139s
 160 - 2600 SELECTS, numeric BETWEEN, indexed......................    0.066s
 161 - 2600 SELECTS, numeric BETWEEN, PK...........................    0.066s
 161 - 2600 SELECTS, numeric BETWEEN, PK...........................    0.063s
 161 - 2600 SELECTS, numeric BETWEEN, PK...........................    0.067s
 161 - 2600 SELECTS, numeric BETWEEN, PK...........................    0.065s
 170 - 2600 SELECTS, text BETWEEN, indexed.........................    0.063s
 170 - 2600 SELECTS, text BETWEEN, indexed.........................    0.067s
 170 - 2600 SELECTS, text BETWEEN, indexed.........................    0.066s
 170 - 2600 SELECTS, text BETWEEN, indexed.........................    0.134s
 180 - 13000 INSERTS with three indexes............................    0.133s
 180 - 13000 INSERTS with three indexes............................    0.135s
 180 - 13000 INSERTS with three indexes............................    0.135s
 180 - 13000 INSERTS with three indexes............................    0.140s
 190 - DELETE and REFILL one table.................................    0.138s
 190 - DELETE and REFILL one table.................................    0.144s
 190 - DELETE and REFILL one table.................................    0.147s
 190 - DELETE and REFILL one table.................................    0.159s
 200 - VACUUM......................................................    0.152s
 200 - VACUUM......................................................    0.177s
 200 - VACUUM......................................................    0.164s
 200 - VACUUM......................................................    3.174s
 210 - ALTER TABLE ADD COLUMN, and query...........................    3.156s
 210 - ALTER TABLE ADD COLUMN, and query...........................    3.149s
 210 - ALTER TABLE ADD COLUMN, and query...........................    3.170s
 210 - ALTER TABLE ADD COLUMN, and query...........................    0.006s
 230 - 2600 UPDATES, numeric BETWEEN, indexed......................    0.007s
 230 - 2600 UPDATES, numeric BETWEEN, indexed......................    0.005s
 230 - 2600 UPDATES, numeric BETWEEN, indexed......................    0.006s
 230 - 2600 UPDATES, numeric BETWEEN, indexed......................    0.050s
 240 - 13000 UPDATES of individual rows............................    0.051s
 240 - 13000 UPDATES of individual rows............................    0.055s
 240 - 13000 UPDATES of individual rows............................    0.050s
 240 - 13000 UPDATES of individual rows............................    0.089s
   0.088s
 250 - One big UPDATE of the whole 13000-row table.................  250 - One big UPDATE of the whole 13000-row table.................    0.088s
 250 - One big UPDATE of the whole 13000-row table.................    0.092s
 250 - One big UPDATE of the whole 13000-row table.................    0.026s
 260 - Query added column after filling............................    0.027s
 260 - Query added column after filling............................    0.005s
 270 - 2600 DELETEs, numeric BETWEEN, indexed......................    0.024s
 260 - Query added column after filling............................    0.006s
 270 - 2600 DELETEs, numeric BETWEEN, indexed......................    0.005s
 270 - 2600 DELETEs, numeric BETWEEN, indexed......................    0.034s
 260 - Query added column after filling............................    0.005s
 270 - 2600 DELETEs, numeric BETWEEN, indexed......................    0.129s
 280 - 13000 DELETEs of individual rows............................    0.128s
 280 - 13000 DELETEs of individual rows............................    0.132s
 280 - 13000 DELETEs of individual rows............................    0.136s
 280 - 13000 DELETEs of individual rows............................    0.119s
 290 - Refill two 13000-row tables using REPLACE...................    0.120s
 290 - Refill two 13000-row tables using REPLACE...................    0.120s
 290 - Refill two 13000-row tables using REPLACE...................    0.124s
 290 - Refill two 13000-row tables using REPLACE...................    0.326s
 300 - Refill a 13000-row table using (b&1)==(a&1).................    0.322s
 300 - Refill a 13000-row table using (b&1)==(a&1).................    0.324s
 300 - Refill a 13000-row table using (b&1)==(a&1).................    0.331s
 300 - Refill a 13000-row table using (b&1)==(a&1).................    0.156s
 310 - 2600 four-ways joins........................................    0.157s
 310 - 2600 four-ways joins........................................    0.158s
 310 - 2600 four-ways joins........................................    0.165s
 310 - 2600 four-ways joins........................................    0.309s
 320 - subquery in result set......................................    0.311s
 320 - subquery in result set......................................    0.313s
 320 - subquery in result set......................................    0.309s
 320 - subquery in result set......................................    0.606s
 400 - 26000 REPLACE ops on an IPK.................................    0.603s
 400 - 26000 REPLACE ops on an IPK.................................    0.605s
 400 - 26000 REPLACE ops on an IPK.................................    0.603s
 400 - 26000 REPLACE ops on an IPK.................................    0.191s
 410 - 26000 SELECTS on an IPK.....................................    0.196s
 410 - 26000 SELECTS on an IPK.....................................    0.195s
 410 - 26000 SELECTS on an IPK.....................................    0.192s
 410 - 26000 SELECTS on an IPK.....................................    0.124s
 500 - 26000 REPLACE on TEXT PK....................................    0.119s
 500 - 26000 REPLACE on TEXT PK....................................    0.122s
 500 - 26000 REPLACE on TEXT PK....................................    0.120s
 500 - 26000 REPLACE on TEXT PK....................................    0.188s
 510 - 26000 SELECTS on a TEXT PK..................................    0.192s
 510 - 26000 SELECTS on a TEXT PK..................................    0.193s
 510 - 26000 SELECTS on a TEXT PK..................................    0.191s
 510 - 26000 SELECTS on a TEXT PK..................................    0.200s
 520 - 26000 SELECT DISTINCT.......................................    0.202s
 520 - 26000 SELECT DISTINCT.......................................    0.202s
 520 - 26000 SELECT DISTINCT.......................................    0.204s
 520 - 26000 SELECT DISTINCT.......................................    0.136s
 980 - PRAGMA integrity_check......................................    0.134s
 980 - PRAGMA integrity_check......................................    0.141s
 980 - PRAGMA integrity_check......................................    0.138s
 980 - PRAGMA integrity_check......................................    0.282s
 990 - ANALYZE.....................................................    0.286s
 990 - ANALYZE.....................................................    0.285s
 990 - ANALYZE.....................................................    0.286s
 990 - ANALYZE.....................................................    0.048s
       TOTAL.......................................................    7.660s
SUCCESS::system(./speedtest1 --size 130) succeeded
   0.052s
       TOTAL.......................................................    7.683s
   0.054s
       TOTAL.......................................................    7.675s
SUCCESS::system(./speedtest1 --size 130) succeeded
SUCCESS::system(./speedtest1 --size 130) succeeded
   0.051s
       TOTAL.......................................................    7.711s
SUCCESS::system(./speedtest1 --size 130) succeeded
# started on Fri Mar  5 17:11:58 2021


 Performance counter stats for 'system wide':

S0-C0           1            7761.87 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               5504      context-switches          #    0.709 K/sec                  
S0-C0           1                138      cpu-migrations            #    0.018 K/sec                  
S0-C0           1               2174      page-faults               #    0.280 K/sec                  
S0-C0           1         7290743331      cycles                    #    0.939 GHz                    
S0-C0           1         4951596759      instructions              #    0.68  insn per cycle         
S0-C0           1          617391009      branches                  #   79.542 M/sec                  
S0-C0           1           35329334      branch-misses             #    5.72% of all branches        
S0-C1           1            7761.87 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               3660      context-switches          #    0.472 K/sec                  
S0-C1           1                188      cpu-migrations            #    0.024 K/sec                  
S0-C1           1               2252      page-faults               #    0.290 K/sec                  
S0-C1           1         7113629514      cycles                    #    0.916 GHz                    
S0-C1           1         4871266880      instructions              #    0.68  insn per cycle         
S0-C1           1          606298597      branches                  #   78.112 M/sec                  
S0-C1           1           33394466      branch-misses             #    5.51% of all branches        
S0-C2           1            7761.88 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               4119      context-switches          #    0.531 K/sec                  
S0-C2           1                161      cpu-migrations            #    0.021 K/sec                  
S0-C2           1               2150      page-faults               #    0.277 K/sec                  
S0-C2           1         7132988712      cycles                    #    0.919 GHz                    
S0-C2           1         4875106702      instructions              #    0.68  insn per cycle         
S0-C2           1          607412816      branches                  #   78.256 M/sec                  
S0-C2           1           33014304      branch-misses             #    5.44% of all branches        
S0-C3           1            7761.84 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               2909      context-switches          #    0.375 K/sec                  
S0-C3           1                187      cpu-migrations            #    0.024 K/sec                  
S0-C3           1               2122      page-faults               #    0.273 K/sec                  
S0-C3           1         7121478939      cycles                    #    0.917 GHz                    
S0-C3           1         4874902194      instructions              #    0.68  insn per cycle         
S0-C3           1          607642447      branches                  #   78.286 M/sec                  
S0-C3           1           34304625      branch-misses             #    5.65% of all branches        

       7.763301876 seconds time elapsed

================================================================================
perf stat -o go_word2vec_4_threads.txt  --per-core -a taskset -c 0-3 ./go_word2vec.sh 4
/root/i-benchmarks/golang/bin
Save trained vectors to example/word_vectors_sg.txt
# started on Fri Mar  5 17:12:06 2021


 Performance counter stats for 'system wide':

S0-C0           1           26091.48 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               5719      context-switches          #    0.219 K/sec                  
S0-C0           1                 69      cpu-migrations            #    0.003 K/sec                  
S0-C0           1               1414      page-faults               #    0.054 K/sec                  
S0-C0           1        33805629183      cycles                    #    1.296 GHz                    
S0-C0           1        23874318983      instructions              #    0.71  insn per cycle         
S0-C0           1         2192152640      branches                  #   84.018 M/sec                  
S0-C0           1           42797190      branch-misses             #    1.95% of all branches        
S0-C1           1           26091.45 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               5313      context-switches          #    0.204 K/sec                  
S0-C1           1                104      cpu-migrations            #    0.004 K/sec                  
S0-C1           1               1451      page-faults               #    0.056 K/sec                  
S0-C1           1        30529704210      cycles                    #    1.170 GHz                    
S0-C1           1        20558835604      instructions              #    0.67  insn per cycle         
S0-C1           1         1896447067      branches                  #   72.685 M/sec                  
S0-C1           1           27618366      branch-misses             #    1.46% of all branches        
S0-C2           1           26091.45 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               5871      context-switches          #    0.225 K/sec                  
S0-C2           1                 71      cpu-migrations            #    0.003 K/sec                  
S0-C2           1               2188      page-faults               #    0.084 K/sec                  
S0-C2           1        31460283667      cycles                    #    1.206 GHz                    
S0-C2           1        21169008699      instructions              #    0.67  insn per cycle         
S0-C2           1         1950050856      branches                  #   74.739 M/sec                  
S0-C2           1           28531291      branch-misses             #    1.46% of all branches        
S0-C3           1           26091.72 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               5436      context-switches          #    0.208 K/sec                  
S0-C3           1                 91      cpu-migrations            #    0.003 K/sec                  
S0-C3           1               2176      page-faults               #    0.083 K/sec                  
S0-C3           1        34625805734      cycles                    #    1.327 GHz                    
S0-C3           1        24679904118      instructions              #    0.71  insn per cycle         
S0-C3           1         2262434391      branches                  #   86.711 M/sec                  
S0-C3           1           42986253      branch-misses             #    1.90% of all branches        

      26.093757195 seconds time elapsed

================================================================================
================================================================================
Running run_forest_importances_faces test
perf stat -o ../output/run_forest_importances_faces.log --per-core -a taskset -c 0-3 ./run_forest_importances_faces.sh -n 4

=================================================
Pixel importances with a parallel forest of trees
=================================================

This example shows the use of forests of trees to evaluate the importance
of the pixels in an image classification task (faces). The hotter the pixel,
the more important.

The code below also illustrates how the construction and the computation
of the predictions can be parallelized within multiple jobs.

=================================================
Pixel importances with a parallel forest of trees
=================================================

This example shows the use of forests of trees to evaluate the importance
of the pixels in an image classification task (faces). The hotter the pixel,
the more important.

The code below also illustrates how the construction and the computation
of the predictions can be parallelized within multiple jobs.



=================================================
Pixel importances with a parallel forest of trees
=================================================

This example shows the use of forests of trees to evaluate the importance
of the pixels in an image classification task (faces). The hotter the pixel,
the more important.

The code below also illustrates how the construction and the computation
of the predictions can be parallelized within multiple jobs.


=================================================
Pixel importances with a parallel forest of trees
=================================================

This example shows the use of forests of trees to evaluate the importance
of the pixels in an image classification task (faces). The hotter the pixel,
the more important.

The code below also illustrates how the construction and the computation
of the predictions can be parallelized within multiple jobs.

/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
Fitting ExtraTreesClassifier on faces data with 1 cores...
Fitting ExtraTreesClassifier on faces data with 1 cores...
Fitting ExtraTreesClassifier on faces data with 1 cores...
Fitting ExtraTreesClassifier on faces data with 1 cores...
done in 7.198s
done in 7.219s
done in 7.227s
done in 7.264s
./run_forest_importances_faces.sh: line 32:   697 Killed                  python3 plot_forest_importances_faces.py
/root/i-benchmarks/scikit/bin
# started on Fri Mar  5 17:12:32 2021


 Performance counter stats for 'system wide':

S0-C0           1           20376.63 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1              16594      context-switches          #    0.814 K/sec                  
S0-C0           1                952      cpu-migrations            #    0.047 K/sec                  
S0-C0           1              34469      page-faults               #    0.002 M/sec                  
S0-C0           1        21063665884      cycles                    #    1.034 GHz                    
S0-C0           1         7331055014      instructions              #    0.35  insn per cycle         
S0-C0           1          872374851      branches                  #   42.813 M/sec                  
S0-C0           1          158667139      branch-misses             #   18.19% of all branches        
S0-C1           1           20376.64 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1              18022      context-switches          #    0.884 K/sec                  
S0-C1           1               1221      cpu-migrations            #    0.060 K/sec                  
S0-C1           1              50118      page-faults               #    0.002 M/sec                  
S0-C1           1        22234883356      cycles                    #    1.091 GHz                    
S0-C1           1         7847101409      instructions              #    0.35  insn per cycle         
S0-C1           1          898870395      branches                  #   44.113 M/sec                  
S0-C1           1          143761791      branch-misses             #   15.99% of all branches        
S0-C2           1           20376.68 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1              15999      context-switches          #    0.785 K/sec                  
S0-C2           1               1094      cpu-migrations            #    0.054 K/sec                  
S0-C2           1              45924      page-faults               #    0.002 M/sec                  
S0-C2           1        22299358212      cycles                    #    1.094 GHz                    
S0-C2           1         7810135179      instructions              #    0.35  insn per cycle         
S0-C2           1          893048852      branches                  #   43.827 M/sec                  
S0-C2           1          141361297      branch-misses             #   15.83% of all branches        
S0-C3           1           20376.61 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1              14752      context-switches          #    0.724 K/sec                  
S0-C3           1                967      cpu-migrations            #    0.047 K/sec                  
S0-C3           1              41150      page-faults               #    0.002 M/sec                  
S0-C3           1        23026607239      cycles                    #    1.130 GHz                    
S0-C3           1         8205874491      instructions              #    0.36  insn per cycle         
S0-C3           1          952646998      branches                  #   46.752 M/sec                  
S0-C3           1          138919149      branch-misses             #   14.58% of all branches        

      20.378148913 seconds time elapsed

================================================================================
Running run_multioutput_face_completion test
perf stat -o ../output/run_multioutput_face_completion.log --per-core -a taskset -c 0-3 ./run_multioutput_face_completion.sh -n 4

==============================================
Face completion with a multi-output estimators
==============================================

This example shows the use of multi-output estimator to complete images.
The goal is to predict the lower half of a face given its upper half.

The first column of images shows true faces. The next columns illustrate
how extremely randomized trees, k nearest neighbors, linear
regression and ridge regression complete the lower half of those faces.


==============================================
Face completion with a multi-output estimators
==============================================

This example shows the use of multi-output estimator to complete images.
The goal is to predict the lower half of a face given its upper half.

The first column of images shows true faces. The next columns illustrate
how extremely randomized trees, k nearest neighbors, linear
regression and ridge regression complete the lower half of those faces.




==============================================
Face completion with a multi-output estimators
==============================================

This example shows the use of multi-output estimator to complete images.
The goal is to predict the lower half of a face given its upper half.

The first column of images shows true faces. The next columns illustrate
how extremely randomized trees, k nearest neighbors, linear
regression and ridge regression complete the lower half of those faces.


==============================================
Face completion with a multi-output estimators
==============================================

This example shows the use of multi-output estimator to complete images.
The goal is to predict the lower half of a face given its upper half.

The first column of images shows true faces. The next columns illustrate
how extremely randomized trees, k nearest neighbors, linear
regression and ridge regression complete the lower half of those faces.



/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
Traceback (most recent call last):
  File "plot_multioutput_face_completion.py", line 60, in <module>
    estimator.fit(X_train, y_train)
  File "/usr/lib/python3/dist-packages/sklearn/linear_model/ridge.py", line 1148, in fit
    estimator.fit(X, y, sample_weight=sample_weight)
  File "/usr/lib/python3/dist-packages/sklearn/linear_model/ridge.py", line 1098, in fit
    self._set_intercept(X_offset, y_offset, X_scale)
  File "/usr/lib/python3/dist-packages/sklearn/linear_model/base.py", line 221, in _set_intercept
    self.coef_ = self.coef_ / X_scale
MemoryError
./run_multioutput_face_completion.sh: line 35:   708 Killed                  python3 plot_multioutput_face_completion.py
./run_multioutput_face_completion.sh: line 35:   709 Killed                  python3 plot_multioutput_face_completion.py
./run_multioutput_face_completion.sh: line 35:   710 Killed                  python3 plot_multioutput_face_completion.py
/root/i-benchmarks/scikit/bin
# started on Fri Mar  5 17:12:53 2021


 Performance counter stats for 'system wide':

S0-C0           1           40615.43 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1              21940      context-switches          #    0.540 K/sec                  
S0-C0           1                889      cpu-migrations            #    0.022 K/sec                  
S0-C0           1              31620      page-faults               #    0.779 K/sec                  
S0-C0           1        20481387525      cycles                    #    0.504 GHz                    
S0-C0           1         7998882178      instructions              #    0.39  insn per cycle         
S0-C0           1          975210696      branches                  #   24.011 M/sec                  
S0-C0           1          119516649      branch-misses             #   12.26% of all branches        
S0-C1           1           40615.43 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1              21405      context-switches          #    0.527 K/sec                  
S0-C1           1               1092      cpu-migrations            #    0.027 K/sec                  
S0-C1           1              73254      page-faults               #    0.002 M/sec                  
S0-C1           1        32206301313      cycles                    #    0.793 GHz                    
S0-C1           1        15499624612      instructions              #    0.48  insn per cycle         
S0-C1           1         1367964493      branches                  #   33.681 M/sec                  
S0-C1           1           86343990      branch-misses             #    6.31% of all branches        
S0-C2           1           40615.47 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1              21225      context-switches          #    0.523 K/sec                  
S0-C2           1                967      cpu-migrations            #    0.024 K/sec                  
S0-C2           1              73564      page-faults               #    0.002 M/sec                  
S0-C2           1        53939730986      cycles                    #    1.328 GHz                    
S0-C2           1        24670131476      instructions              #    0.46  insn per cycle         
S0-C2           1         1788308975      branches                  #   44.030 M/sec                  
S0-C2           1          113834310      branch-misses             #    6.37% of all branches        
S0-C3           1           40615.43 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1              19623      context-switches          #    0.483 K/sec                  
S0-C3           1                926      cpu-migrations            #    0.023 K/sec                  
S0-C3           1              72568      page-faults               #    0.002 M/sec                  
S0-C3           1        49464585434      cycles                    #    1.218 GHz                    
S0-C3           1        21027302138      instructions              #    0.43  insn per cycle         
S0-C3           1         1463479734      branches                  #   36.033 M/sec                  
S0-C3           1          100807551      branch-misses             #    6.89% of all branches        

      40.617048551 seconds time elapsed

================================================================================
Running run_logistic_path test
perf stat -o ../output/run_logistic_path.log --per-core -a taskset -c 0-3 ./run_logistic_path.sh -n 4

==============================================
Regularization path of L1- Logistic Regression
==============================================


Train l1-penalized logistic regression models on a binary classification
problem derived from the Iris dataset.

The models are ordered from strongest regularized to least regularized. The 4
coefficients of the models are collected and plotted as a "regularization
path": on the left-hand side of the figure (strong regularizers), all the
coefficients are exactly 0. When regularization gets progressively looser,
coefficients can get non-zero values one after the other.

Here we choose the SAGA solver because it can efficiently optimize for the
Logistic Regression loss with a non-smooth, sparsity inducing l1 penalty.

Also note that we set a low value for the tolerance to make sure that the model
has converged before collecting the coefficients.

We also use warm_start=True which means that the coefficients of the models are
reused to initialize the next model fit to speed-up the computation of the
full-path.


==============================================
Regularization path of L1- Logistic Regression
==============================================


Train l1-penalized logistic regression models on a binary classification
problem derived from the Iris dataset.

The models are ordered from strongest regularized to least regularized. The 4
coefficients of the models are collected and plotted as a "regularization
path": on the left-hand side of the figure (strong regularizers), all the
coefficients are exactly 0. When regularization gets progressively looser,
coefficients can get non-zero values one after the other.

Here we choose the SAGA solver because it can efficiently optimize for the
Logistic Regression loss with a non-smooth, sparsity inducing l1 penalty.

Also note that we set a low value for the tolerance to make sure that the model
has converged before collecting the coefficients.

We also use warm_start=True which means that the coefficients of the models are
reused to initialize the next model fit to speed-up the computation of the
full-path.



==============================================
Regularization path of L1- Logistic Regression
==============================================


Train l1-penalized logistic regression models on a binary classification
problem derived from the Iris dataset.

The models are ordered from strongest regularized to least regularized. The 4
coefficients of the models are collected and plotted as a "regularization
path": on the left-hand side of the figure (strong regularizers), all the
coefficients are exactly 0. When regularization gets progressively looser,
coefficients can get non-zero values one after the other.

Here we choose the SAGA solver because it can efficiently optimize for the
Logistic Regression loss with a non-smooth, sparsity inducing l1 penalty.

Also note that we set a low value for the tolerance to make sure that the model
has converged before collecting the coefficients.

We also use warm_start=True which means that the coefficients of the models are
reused to initialize the next model fit to speed-up the computation of the
full-path.




==============================================
Regularization path of L1- Logistic Regression
==============================================


Train l1-penalized logistic regression models on a binary classification
problem derived from the Iris dataset.

The models are ordered from strongest regularized to least regularized. The 4
coefficients of the models are collected and plotted as a "regularization
path": on the left-hand side of the figure (strong regularizers), all the
coefficients are exactly 0. When regularization gets progressively looser,
coefficients can get non-zero values one after the other.

Here we choose the SAGA solver because it can efficiently optimize for the
Logistic Regression loss with a non-smooth, sparsity inducing l1 penalty.

Also note that we set a low value for the tolerance to make sure that the model
has converged before collecting the coefficients.

We also use warm_start=True which means that the coefficients of the models are
reused to initialize the next model fit to speed-up the computation of the
full-path.


/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
Computing regularization path ...
Computing regularization path ...
Computing regularization path ...
Computing regularization path ...
This took 22.934s
This took 23.568s
This took 23.985s
This took 24.146s
/root/i-benchmarks/scikit/bin
# started on Fri Mar  5 17:13:34 2021


 Performance counter stats for 'system wide':

S0-C0           1           30713.06 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1              11402      context-switches          #    0.371 K/sec                  
S0-C0           1                722      cpu-migrations            #    0.024 K/sec                  
S0-C0           1              20848      page-faults               #    0.679 K/sec                  
S0-C0           1        41952622395      cycles                    #    1.366 GHz                    
S0-C0           1        25825980428      instructions              #    0.62  insn per cycle         
S0-C0           1         2692751537      branches                  #   87.674 M/sec                  
S0-C0           1          162401356      branch-misses             #    6.03% of all branches        
S0-C1           1           30713.04 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1              14552      context-switches          #    0.474 K/sec                  
S0-C1           1               1039      cpu-migrations            #    0.034 K/sec                  
S0-C1           1              34649      page-faults               #    0.001 M/sec                  
S0-C1           1        43545693209      cycles                    #    1.418 GHz                    
S0-C1           1        26892222813      instructions              #    0.62  insn per cycle         
S0-C1           1         2790010810      branches                  #   90.841 M/sec                  
S0-C1           1          148331831      branch-misses             #    5.32% of all branches        
S0-C2           1           30712.65 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1              13001      context-switches          #    0.423 K/sec                  
S0-C2           1                933      cpu-migrations            #    0.030 K/sec                  
S0-C2           1              30019      page-faults               #    0.977 K/sec                  
S0-C2           1        43829841636      cycles                    #    1.427 GHz                    
S0-C2           1        26304416272      instructions              #    0.60  insn per cycle         
S0-C2           1         2723354487      branches                  #   88.672 M/sec                  
S0-C2           1          146796943      branch-misses             #    5.39% of all branches        
S0-C3           1           30712.70 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1              13889      context-switches          #    0.452 K/sec                  
S0-C3           1                854      cpu-migrations            #    0.028 K/sec                  
S0-C3           1              27754      page-faults               #    0.904 K/sec                  
S0-C3           1        42174253462      cycles                    #    1.373 GHz                    
S0-C3           1        25723643840      instructions              #    0.61  insn per cycle         
S0-C3           1         2651414446      branches                  #   86.330 M/sec                  
S0-C3           1          141911598      branch-misses             #    5.35% of all branches        

      30.714549556 seconds time elapsed

================================================================================
Running run_plot_svm_nonlinear test
perf stat -o ../output/run_plot_svm_nonlinear.log --per-core -a taskset -c 0-3 ./run_plot_svm_nonlinear.sh -n 4

==============
Non-linear SVM
==============

Perform binary classification using non-linear SVC
with RBF kernel. The target to predict is a XOR of the
inputs.

The color map illustrates the decision function learned by the SVC.

==============
Non-linear SVM
==============

Perform binary classification using non-linear SVC
with RBF kernel. The target to predict is a XOR of the
inputs.

The color map illustrates the decision function learned by the SVC.

==============
Non-linear SVM
==============

Perform binary classification using non-linear SVC
with RBF kernel. The target to predict is a XOR of the
inputs.

The color map illustrates the decision function learned by the SVC.




==============
Non-linear SVM
==============

Perform binary classification using non-linear SVC
with RBF kernel. The target to predict is a XOR of the
inputs.

The color map illustrates the decision function learned by the SVC.

/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/root/i-benchmarks/scikit/bin
# started on Fri Mar  5 17:14:05 2021


 Performance counter stats for 'system wide':

S0-C0           1           11212.48 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               6092      context-switches          #    0.543 K/sec                  
S0-C0           1                247      cpu-migrations            #    0.022 K/sec                  
S0-C0           1              31644      page-faults               #    0.003 M/sec                  
S0-C0           1        15771388607      cycles                    #    1.407 GHz                    
S0-C0           1         9011607196      instructions              #    0.57  insn per cycle         
S0-C0           1          962736839      branches                  #   85.863 M/sec                  
S0-C0           1           72101490      branch-misses             #    7.49% of all branches        
S0-C1           1           11212.52 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               6781      context-switches          #    0.605 K/sec                  
S0-C1           1                311      cpu-migrations            #    0.028 K/sec                  
S0-C1           1              34152      page-faults               #    0.003 M/sec                  
S0-C1           1        15862305063      cycles                    #    1.415 GHz                    
S0-C1           1         9076752773      instructions              #    0.57  insn per cycle         
S0-C1           1          958662658      branches                  #   85.499 M/sec                  
S0-C1           1           65031869      branch-misses             #    6.78% of all branches        
S0-C2           1           11212.53 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               6135      context-switches          #    0.547 K/sec                  
S0-C2           1                270      cpu-migrations            #    0.024 K/sec                  
S0-C2           1              29049      page-faults               #    0.003 M/sec                  
S0-C2           1        15946347500      cycles                    #    1.422 GHz                    
S0-C2           1         9140408601      instructions              #    0.57  insn per cycle         
S0-C2           1          968876638      branches                  #   86.410 M/sec                  
S0-C2           1           64797197      branch-misses             #    6.69% of all branches        
S0-C3           1           11212.53 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               6130      context-switches          #    0.547 K/sec                  
S0-C3           1                249      cpu-migrations            #    0.022 K/sec                  
S0-C3           1              32653      page-faults               #    0.003 M/sec                  
S0-C3           1        15798334815      cycles                    #    1.409 GHz                    
S0-C3           1         9116761552      instructions              #    0.58  insn per cycle         
S0-C3           1          963120248      branches                  #   85.897 M/sec                  
S0-C3           1           64741886      branch-misses             #    6.72% of all branches        

      11.214083233 seconds time elapsed

================================================================================
Running run_plot_theilsen test
perf stat -o ../output/run_plot_theilsen.log --per-core -a taskset -c 0-3 ./run_plot_theilsen.sh -n 4
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp
/usr/lib/python3/dist-packages/sklearn/externals/joblib.py:1: DeprecationWarning: the imp module is deprecated in favour of importlib; see the module's documentation for alternative uses
  import imp

====================
Theil-Sen Regression
====================

Computes a Theil-Sen Regression on a synthetic dataset.

See :ref:`theil_sen_regression` for more information on the regressor.

Compared to the OLS (ordinary least squares) estimator, the Theil-Sen
estimator is robust against outliers. It has a breakdown point of about 29.3%
in case of a simple linear regression which means that it can tolerate
arbitrary corrupted data (outliers) of up to 29.3% in the two-dimensional
case.

The estimation of the model is done by calculating the slopes and intercepts
of a subpopulation of all possible combinations of p subsample points. If an
intercept is fitted, p must be greater than or equal to n_features + 1. The
final slope and intercept is then defined as the spatial median of these
slopes and intercepts.

In certain cases Theil-Sen performs better than :ref:`RANSAC
<ransac_regression>` which is also a robust method. This is illustrated in the
second example below where outliers with respect to the x-axis perturb RANSAC.
Tuning the ``residual_threshold`` parameter of RANSAC remedies this but in
general a priori knowledge about the data and the nature of the outliers is
needed.
Due to the computational complexity of Theil-Sen it is recommended to use it
only for small problems in terms of number of samples and features. For larger
problems the ``max_subpopulation`` parameter restricts the magnitude of all
possible combinations of p subsample points to a randomly chosen subset and
therefore also limits the runtime. Therefore, Theil-Sen is applicable to larger
problems with the drawback of losing some of its mathematical properties since
it then works on a random subset.


====================
Theil-Sen Regression
====================

Computes a Theil-Sen Regression on a synthetic dataset.

See :ref:`theil_sen_regression` for more information on the regressor.

Compared to the OLS (ordinary least squares) estimator, the Theil-Sen
estimator is robust against outliers. It has a breakdown point of about 29.3%
in case of a simple linear regression which means that it can tolerate
arbitrary corrupted data (outliers) of up to 29.3% in the two-dimensional
case.

The estimation of the model is done by calculating the slopes and intercepts
of a subpopulation of all possible combinations of p subsample points. If an
intercept is fitted, p must be greater than or equal to n_features + 1. The
final slope and intercept is then defined as the spatial median of these
slopes and intercepts.

In certain cases Theil-Sen performs better than :ref:`RANSAC
<ransac_regression>` which is also a robust method. This is illustrated in the
second example below where outliers with respect to the x-axis perturb RANSAC.
Tuning the ``residual_threshold`` parameter of RANSAC remedies this but in
general a priori knowledge about the data and the nature of the outliers is
needed.
Due to the computational complexity of Theil-Sen it is recommended to use it
only for small problems in terms of number of samples and features. For larger
problems the ``max_subpopulation`` parameter restricts the magnitude of all
possible combinations of p subsample points to a randomly chosen subset and
therefore also limits the runtime. Therefore, Theil-Sen is applicable to larger
problems with the drawback of losing some of its mathematical properties since
it then works on a random subset.

====================
Theil-Sen Regression
====================

Computes a Theil-Sen Regression on a synthetic dataset.

See :ref:`theil_sen_regression` for more information on the regressor.

Compared to the OLS (ordinary least squares) estimator, the Theil-Sen
estimator is robust against outliers. It has a breakdown point of about 29.3%
in case of a simple linear regression which means that it can tolerate
arbitrary corrupted data (outliers) of up to 29.3% in the two-dimensional
case.

The estimation of the model is done by calculating the slopes and intercepts
of a subpopulation of all possible combinations of p subsample points. If an
intercept is fitted, p must be greater than or equal to n_features + 1. The
final slope and intercept is then defined as the spatial median of these
slopes and intercepts.

In certain cases Theil-Sen performs better than :ref:`RANSAC
<ransac_regression>` which is also a robust method. This is illustrated in the
second example below where outliers with respect to the x-axis perturb RANSAC.
Tuning the ``residual_threshold`` parameter of RANSAC remedies this but in
general a priori knowledge about the data and the nature of the outliers is
needed.
Due to the computational complexity of Theil-Sen it is recommended to use it
only for small problems in terms of number of samples and features. For larger
problems the ``max_subpopulation`` parameter restricts the magnitude of all
possible combinations of p subsample points to a randomly chosen subset and
therefore also limits the runtime. Therefore, Theil-Sen is applicable to larger
problems with the drawback of losing some of its mathematical properties since
it then works on a random subset.



====================
Theil-Sen Regression
====================

Computes a Theil-Sen Regression on a synthetic dataset.

See :ref:`theil_sen_regression` for more information on the regressor.

Compared to the OLS (ordinary least squares) estimator, the Theil-Sen
estimator is robust against outliers. It has a breakdown point of about 29.3%
in case of a simple linear regression which means that it can tolerate
arbitrary corrupted data (outliers) of up to 29.3% in the two-dimensional
case.

The estimation of the model is done by calculating the slopes and intercepts
of a subpopulation of all possible combinations of p subsample points. If an
intercept is fitted, p must be greater than or equal to n_features + 1. The
final slope and intercept is then defined as the spatial median of these
slopes and intercepts.

In certain cases Theil-Sen performs better than :ref:`RANSAC
<ransac_regression>` which is also a robust method. This is illustrated in the
second example below where outliers with respect to the x-axis perturb RANSAC.
Tuning the ``residual_threshold`` parameter of RANSAC remedies this but in
general a priori knowledge about the data and the nature of the outliers is
needed.
Due to the computational complexity of Theil-Sen it is recommended to use it
only for small problems in terms of number of samples and features. For larger
problems the ``max_subpopulation`` parameter restricts the magnitude of all
possible combinations of p subsample points to a randomly chosen subset and
therefore also limits the runtime. Therefore, Theil-Sen is applicable to larger
problems with the drawback of losing some of its mathematical properties since
it then works on a random subset.

./run_plot_theilsen.sh: line 32:   743 Killed                  python3 plot_theilsen.py
./run_plot_theilsen.sh: line 32:   745 Killed                  python3 plot_theilsen.py
/root/i-benchmarks/scikit/bin
# started on Fri Mar  5 17:14:16 2021


 Performance counter stats for 'system wide':

S0-C0           1           21962.47 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1              17558      context-switches          #    0.799 K/sec                  
S0-C0           1                794      cpu-migrations            #    0.036 K/sec                  
S0-C0           1              33489      page-faults               #    0.002 M/sec                  
S0-C0           1        17221587228      cycles                    #    0.784 GHz                    
S0-C0           1         6033285476      instructions              #    0.35  insn per cycle         
S0-C0           1          811000286      branches                  #   36.927 M/sec                  
S0-C0           1          148690636      branch-misses             #   18.33% of all branches        
S0-C1           1           21962.47 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1              19861      context-switches          #    0.904 K/sec                  
S0-C1           1               1064      cpu-migrations            #    0.048 K/sec                  
S0-C1           1              68309      page-faults               #    0.003 M/sec                  
S0-C1           1        24309247418      cycles                    #    1.107 GHz                    
S0-C1           1        10428097315      instructions              #    0.43  insn per cycle         
S0-C1           1         1262170976      branches                  #   57.469 M/sec                  
S0-C1           1          244530274      branch-misses             #   19.37% of all branches        
S0-C2           1           21962.47 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1              19321      context-switches          #    0.880 K/sec                  
S0-C2           1                966      cpu-migrations            #    0.044 K/sec                  
S0-C2           1              60626      page-faults               #    0.003 M/sec                  
S0-C2           1        25577363754      cycles                    #    1.165 GHz                    
S0-C2           1        11059739512      instructions              #    0.43  insn per cycle         
S0-C2           1         1354780207      branches                  #   61.686 M/sec                  
S0-C2           1          243716870      branch-misses             #   17.99% of all branches        
S0-C3           1           21962.46 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1              15624      context-switches          #    0.711 K/sec                  
S0-C3           1                897      cpu-migrations            #    0.041 K/sec                  
S0-C3           1              66414      page-faults               #    0.003 M/sec                  
S0-C3           1        20537523061      cycles                    #    0.935 GHz                    
S0-C3           1         7059343354      instructions              #    0.34  insn per cycle         
S0-C3           1          863004555      branches                  #   39.295 M/sec                  
S0-C3           1          161138331      branch-misses             #   18.67% of all branches        

      21.963946161 seconds time elapsed

================================================================================
perf stat -o spec_mcf.log --per-core -a  taskset -c 0-15  ./spec_mcf_benchmark.sh -n 16

MCF SPEC CPU version 1.11
Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)
Copyright (c) 2000-2002 Andreas Loebel & ZIB
Copyright (c) 2003-2005 Andreas Loebel
Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)


MCF SPEC CPU version 1.11
Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)
Copyright (c) 2000-2002 Andreas Loebel & ZIB
Copyright (c) 2003-2005 Andreas Loebel
Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)


MCF SPEC CPU version 1.11

MCF SPEC CPU version 1.11
Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)
Copyright (c) 2000-2002 Andreas Loebel & ZIB
Copyright (c) 2003-2005 Andreas Loebel
Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)


MCF SPEC CPU version 1.11
Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)
Copyright (c) 2000-2002 Andreas Loebel & ZIB
Copyright (c) 2003-2005 Andreas Loebel
Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)


MCF SPEC CPU version 1.11
Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)
Copyright (c) 2000-2002 Andreas Loebel & ZIB




MCF SPEC CPU version 1.11
Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)
Copyright (c) 2000-2002 Andreas Loebel & ZIB
Copyright (c) 2003-2005 Andreas Loebel
Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)

MCF SPEC CPU version 1.11
Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)
Copyright (c) 2000-2002 Andreas Loebel & ZIB
Copyright (c) 2003-2005 Andreas Loebel
Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)


Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)
Copyright (c) 2000-2002 Andreas Loebel & ZIB

MCF SPEC CPU version 1.11
Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)
Copyright (c) 2000-2002 Andreas Loebel & ZIB
Copyright (c) 2003-2005 Andreas Loebel
Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)

Copyright (c) 2003-2005 Andreas Loebel
MCF SPEC CPU version 1.11
Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)

MCF SPEC CPU version 1.11
Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)
Copyright (c) 2000-2002 Andreas Loebel & ZIB
Copyright (c) 2003-2005 Andreas Loebel
Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)

MCF SPEC CPU version 1.11
Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)
Copyright (c) 2000-2002 Andreas Loebel & ZIB
Copyright (c) 2003-2005 Andreas Loebel
Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)

MCF SPEC CPU version 1.11
Copyright (c) 2003-2005 Andreas Loebel
Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)

Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)
Copyright (c) 2000-2002 Andreas Loebel & ZIB
Copyright (c) 2003-2005 Andreas Loebel
Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)

Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)


MCF SPEC CPU version 1.11
Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)
Copyright (c) 2000-2002 Andreas Loebel & ZIB
Copyright (c) 2003-2005 Andreas Loebel
Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)

Copyright (c) 2000-2002 Andreas Loebel & ZIB
Copyright (c) 2003-2005 Andreas Loebel

MCF SPEC CPU version 1.11

MCF SPEC CPU version 1.11
Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)
Copyright (c) 2000-2002 Andreas Loebel & ZIB
Copyright (c) 2003-2005 Andreas Loebel
Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)

Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)
Copyright (c) 2000-2002 Andreas Loebel & ZIB
Copyright (c) 2003-2005 Andreas Loebel
Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)

Copyright (c) 2006-2010 Dres. Loebel, Borndoerfer & Weider GbR (LBW)

nodes                      : 5985
active arcs                : 102404
nodes                      : 5985
active arcs                : 102404
nodes                      : 5985
nodes                      : 5985
active arcs                : 102404
nodes                      : 5985
nodes                      : 5985
active arcs                : 102404
active arcs                : 102404
nodes                      : 5985
active arcs                : 102404
active arcs                : 102404
nodes                      : 5985
nodes                      : 5985
active arcs                : 102404
nodes                      : 5985
active arcs                : 102404
active arcs                : 102404
nodes                      : 5985
nodes                      : 5985
nodes                      : 5985
nodes                      : 5985
nodes                      : 5985
active arcs                : 102404
nodes                      : 5985
active arcs                : 102404
active arcs                : 102404
active arcs                : 102404
active arcs                : 102404
active arcs                : 102404
simplex iterations         : 45986
objective value            : 3180065918
simplex iterations         : 45986
objective value            : 3180065918
simplex iterations         : 45986
objective value            : 3180065918
simplex iterations         : 45986
objective value            : 3180065918
simplex iterations         : 45986
simplex iterations         : 45986
objective value            : 3180065918
objective value            : 3180065918
simplex iterations         : 45986
objective value            : 3180065918
simplex iterations         : 45986
objective value            : 3180065918
simplex iterations         : 45986
simplex iterations         : 45986
objective value            : 3180065918
objective value            : 3180065918
simplex iterations         : 45986
objective value            : 3180065918
network mcf_inp.in: not enough memory
new implicit arcs          : -1
not enough memory, exit(-1)
simplex iterations         : 45986
objective value            : 3180065918
network mcf_inp.in: not enough memory
new implicit arcs          : -1
not enough memory, exit(-1)
simplex iterations         : 45986
simplex iterations         : 45986
objective value            : 3180065918
objective value            : 3180065918
simplex iterations         : 45986
objective value            : 3180065918
simplex iterations         : 45986
objective value            : 3180065918
network mcf_inp.in: not enough memory
network mcf_inp.in: not enough memory
network mcf_inp.in: not enough memory
new implicit arcs          : -1
new implicit arcs          : -1
not enough memory, exit(-1)
not enough memory, exit(-1)
new implicit arcs          : -1
not enough memory, exit(-1)
./spec_mcf_benchmark.sh: line 33:   762 Killed                  ./mcf_r mcf_inp.in
network mcf_inp.in: not enough memory
new implicit arcs          : -1
not enough memory, exit(-1)
./spec_mcf_benchmark.sh: line 33:   764 Killed                  ./mcf_r mcf_inp.in
./spec_mcf_benchmark.sh: line 33:   765 Killed                  ./mcf_r mcf_inp.in
./spec_mcf_benchmark.sh: line 33:   766 Killed                  ./mcf_r mcf_inp.in
./spec_mcf_benchmark.sh: line 33:   767 Killed                  ./mcf_r mcf_inp.in
./spec_mcf_benchmark.sh: line 33:   775 Killed                  ./mcf_r mcf_inp.in
./spec_mcf_benchmark.sh: line 33:   768 Killed                  ./mcf_r mcf_inp.in
./spec_mcf_benchmark.sh: line 33:   769 Killed                  ./mcf_r mcf_inp.in
new implicit arcs          : 1000000
active arcs                : 1102404
new implicit arcs          : 1000000
active arcs                : 1102404
simplex iterations         : 57610
objective value            : 2060058590
simplex iterations         : 57610
objective value            : 2060058590
erased arcs                : 998080
erased arcs                : 998080
network mcf_inp.in: not enough memory
new implicit arcs          : -1
not enough memory, exit(-1)
new implicit arcs          : 721331
active arcs                : 825655
simplex iterations         : 70075
objective value            : 2060055934
erased arcs                : 719199
new implicit arcs          : 807
active arcs                : 107263
simplex iterations         : 70415
objective value            : 2060055898
erased arcs                : 935
new implicit arcs          : 579
active arcs                : 106907
simplex iterations         : 70428
objective value            : 2060055880
erased arcs                : 578
new implicit arcs          : 34
active arcs                : 106363
simplex iterations         : 70450
objective value            : 2060055880
erased arcs                : 34
new implicit arcs          : 1
active arcs                : 106330
simplex iterations         : 70451
objective value            : 2060055880
erased arcs                : 1
new implicit arcs          : 6
active arcs                : 106335
simplex iterations         : 70460
objective value            : 2060055880
erased arcs                : 10
new implicit arcs          : 8
active arcs                : 106333
simplex iterations         : 70583
objective value            : 2060055879
erased arcs                : 114
new implicit arcs          : 3538
active arcs                : 109757
simplex iterations         : 71002
objective value            : 2060055866
erased arcs                : 3547
checksum                   : 2060055866
done
/root/i-benchmarks/spec/bin
# started on Fri Mar  5 17:14:38 2021


 Performance counter stats for 'system wide':

S0-C0           1          257485.17 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1              61482      context-switches          #    0.239 K/sec                  
S0-C0           1                599      cpu-migrations            #    0.002 K/sec                  
S0-C0           1              65138      page-faults               #    0.253 K/sec                  
S0-C0           1       323996426940      cycles                    #    1.258 GHz                    
S0-C0           1        53495651734      instructions              #    0.17  insn per cycle         
S0-C0           1         8511694721      branches                  #   33.057 M/sec                  
S0-C0           1         1332084725      branch-misses             #   15.65% of all branches        
S0-C1           1          257485.14 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1              59660      context-switches          #    0.232 K/sec                  
S0-C1           1                544      cpu-migrations            #    0.002 K/sec                  
S0-C1           1              67694      page-faults               #    0.263 K/sec                  
S0-C1           1       381896874497      cycles                    #    1.483 GHz                    
S0-C1           1        67556502321      instructions              #    0.18  insn per cycle         
S0-C1           1        10404194301      branches                  #   40.407 M/sec                  
S0-C1           1         1510789728      branch-misses             #   14.52% of all branches        
S0-C2           1          257485.13 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1              41613      context-switches          #    0.162 K/sec                  
S0-C2           1                504      cpu-migrations            #    0.002 K/sec                  
S0-C2           1              55750      page-faults               #    0.217 K/sec                  
S0-C2           1       324991606069      cycles                    #    1.262 GHz                    
S0-C2           1        54465443015      instructions              #    0.17  insn per cycle         
S0-C2           1         8601650507      branches                  #   33.406 M/sec                  
S0-C2           1         1302532292      branch-misses             #   15.14% of all branches        
S0-C3           1          257485.14 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1              54271      context-switches          #    0.211 K/sec                  
S0-C3           1                479      cpu-migrations            #    0.002 K/sec                  
S0-C3           1              69372      page-faults               #    0.269 K/sec                  
S0-C3           1       343728906102      cycles                    #    1.335 GHz                    
S0-C3           1        57594248622      instructions              #    0.17  insn per cycle         
S0-C3           1         9070610125      branches                  #   35.228 M/sec                  
S0-C3           1         1380893108      branch-misses             #   15.22% of all branches        

     257.488217227 seconds time elapsed

================================================================================
================================================================================
perf stat -o 099_go.log --per-core -a taskset -c 0-3 ./spec95_099_go.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:18:56 2021


 Performance counter stats for 'system wide':

S0-C0           1           30489.54 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               4957      context-switches          #    0.163 K/sec                  
S0-C0           1                 38      cpu-migrations            #    0.001 K/sec                  
S0-C0           1                140      page-faults               #    0.005 K/sec                  
S0-C0           1        45288417112      cycles                    #    1.485 GHz                    
S0-C0           1        27265564153      instructions              #    0.60  insn per cycle         
S0-C0           1         2640951553      branches                  #   86.618 M/sec                  
S0-C0           1          917543237      branch-misses             #   34.74% of all branches        
S0-C1           1           30489.31 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               1651      context-switches          #    0.054 K/sec                  
S0-C1           1                 47      cpu-migrations            #    0.002 K/sec                  
S0-C1           1                304      page-faults               #    0.010 K/sec                  
S0-C1           1        45003553700      cycles                    #    1.476 GHz                    
S0-C1           1        27214805324      instructions              #    0.60  insn per cycle         
S0-C1           1         2627735970      branches                  #   86.185 M/sec                  
S0-C1           1          911138748      branch-misses             #   34.67% of all branches        
S0-C2           1           30489.35 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               2327      context-switches          #    0.076 K/sec                  
S0-C2           1                 39      cpu-migrations            #    0.001 K/sec                  
S0-C2           1                569      page-faults               #    0.019 K/sec                  
S0-C2           1        45681761609      cycles                    #    1.498 GHz                    
S0-C2           1        27239077132      instructions              #    0.60  insn per cycle         
S0-C2           1         2635002555      branches                  #   86.424 M/sec                  
S0-C2           1          914994107      branch-misses             #   34.72% of all branches        
S0-C3           1           30489.32 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               1517      context-switches          #    0.050 K/sec                  
S0-C3           1                 34      cpu-migrations            #    0.001 K/sec                  
S0-C3           1                483      page-faults               #    0.016 K/sec                  
S0-C3           1        45140629933      cycles                    #    1.481 GHz                    
S0-C3           1        27218832053      instructions              #    0.60  insn per cycle         
S0-C3           1         2629958774      branches                  #   86.258 M/sec                  
S0-C3           1          912129994      branch-misses             #   34.68% of all branches        

      30.491812486 seconds time elapsed

================================================================================
perf stat -o 101_tomcatv.log --per-core -a taskset -c 0-3 ./spec95_101_tomcatv.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:19:27 2021


 Performance counter stats for 'system wide':

S0-C0           1           59052.03 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               6050      context-switches          #    0.102 K/sec                  
S0-C0           1                111      cpu-migrations            #    0.002 K/sec                  
S0-C0           1                939      page-faults               #    0.016 K/sec                  
S0-C0           1        87828423272      cycles                    #    1.487 GHz                    
S0-C0           1        15991222582      instructions              #    0.18  insn per cycle         
S0-C0           1          851201932      branches                  #   14.414 M/sec                  
S0-C0           1           19181408      branch-misses             #    2.25% of all branches        
S0-C1           1           59052.03 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               6314      context-switches          #    0.107 K/sec                  
S0-C1           1                122      cpu-migrations            #    0.002 K/sec                  
S0-C1           1                678      page-faults               #    0.011 K/sec                  
S0-C1           1        88440395610      cycles                    #    1.498 GHz                    
S0-C1           1        16058153006      instructions              #    0.18  insn per cycle         
S0-C1           1          848978951      branches                  #   14.377 M/sec                  
S0-C1           1           16699280      branch-misses             #    1.97% of all branches        
S0-C2           1           59052.03 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               2191      context-switches          #    0.037 K/sec                  
S0-C2           1                 89      cpu-migrations            #    0.002 K/sec                  
S0-C2           1                852      page-faults               #    0.014 K/sec                  
S0-C2           1        88433495375      cycles                    #    1.498 GHz                    
S0-C2           1        16048792051      instructions              #    0.18  insn per cycle         
S0-C2           1          845679475      branches                  #   14.321 M/sec                  
S0-C2           1           14797390      branch-misses             #    1.75% of all branches        
S0-C3           1           59052.09 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               5490      context-switches          #    0.093 K/sec                  
S0-C3           1                 45      cpu-migrations            #    0.001 K/sec                  
S0-C3           1               1008      page-faults               #    0.017 K/sec                  
S0-C3           1        88190929979      cycles                    #    1.493 GHz                    
S0-C3           1        16187921322      instructions              #    0.18  insn per cycle         
S0-C3           1          859735457      branches                  #   14.559 M/sec                  
S0-C3           1           18925137      branch-misses             #    2.20% of all branches        

      59.053652393 seconds time elapsed

================================================================================
perf stat -o 102_swim.log --per-core -a taskset -c 0-3 ./spec95_102_swim.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:20:26 2021


 Performance counter stats for 'system wide':

S0-C0           1           57495.35 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               6581      context-switches          #    0.114 K/sec                  
S0-C0           1                 62      cpu-migrations            #    0.001 K/sec                  
S0-C0           1                748      page-faults               #    0.013 K/sec                  
S0-C0           1        86206648398      cycles                    #    1.499 GHz                    
S0-C0           1         6080855661      instructions              #    0.07  insn per cycle         
S0-C0           1          190680014      branches                  #    3.316 M/sec                  
S0-C0           1            8260988      branch-misses             #    4.33% of all branches        
S0-C1           1           57495.35 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               3601      context-switches          #    0.063 K/sec                  
S0-C1           1                 51      cpu-migrations            #    0.001 K/sec                  
S0-C1           1                861      page-faults               #    0.015 K/sec                  
S0-C1           1        86145348457      cycles                    #    1.498 GHz                    
S0-C1           1         6062406025      instructions              #    0.07  insn per cycle         
S0-C1           1          187263763      branches                  #    3.257 M/sec                  
S0-C1           1            7024970      branch-misses             #    3.75% of all branches        
S0-C2           1           57495.34 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               2151      context-switches          #    0.037 K/sec                  
S0-C2           1                 60      cpu-migrations            #    0.001 K/sec                  
S0-C2           1                721      page-faults               #    0.013 K/sec                  
S0-C2           1        86193222268      cycles                    #    1.499 GHz                    
S0-C2           1         6112898967      instructions              #    0.07  insn per cycle         
S0-C2           1          191004626      branches                  #    3.322 M/sec                  
S0-C2           1            6606724      branch-misses             #    3.46% of all branches        
S0-C3           1           57495.35 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               4901      context-switches          #    0.085 K/sec                  
S0-C3           1                 22      cpu-migrations            #    0.000 K/sec                  
S0-C3           1                909      page-faults               #    0.016 K/sec                  
S0-C3           1        86188744545      cycles                    #    1.499 GHz                    
S0-C3           1         6073842885      instructions              #    0.07  insn per cycle         
S0-C3           1          191715568      branches                  #    3.334 M/sec                  
S0-C3           1            9194589      branch-misses             #    4.80% of all branches        

      57.497008554 seconds time elapsed

================================================================================
perf stat -o 103_su2cor.log --per-core -a taskset -c 0-3 ./spec95_103_su2cor.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:21:23 2021


 Performance counter stats for 'system wide':

S0-C0           1           88240.62 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1              10393      context-switches          #    0.118 K/sec                  
S0-C0           1                 90      cpu-migrations            #    0.001 K/sec                  
S0-C0           1               1135      page-faults               #    0.013 K/sec                  
S0-C0           1       132245489159      cycles                    #    1.499 GHz                    
S0-C0           1        21453755533      instructions              #    0.16  insn per cycle         
S0-C0           1         1206691666      branches                  #   13.675 M/sec                  
S0-C0           1           97905511      branch-misses             #    8.11% of all branches        
S0-C1           1           88240.59 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               3673      context-switches          #    0.042 K/sec                  
S0-C1           1                109      cpu-migrations            #    0.001 K/sec                  
S0-C1           1               1065      page-faults               #    0.012 K/sec                  
S0-C1           1       131965879953      cycles                    #    1.496 GHz                    
S0-C1           1        21358451577      instructions              #    0.16  insn per cycle         
S0-C1           1         1189425828      branches                  #   13.479 M/sec                  
S0-C1           1           91392238      branch-misses             #    7.68% of all branches        
S0-C2           1           88240.63 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               5164      context-switches          #    0.059 K/sec                  
S0-C2           1                 97      cpu-migrations            #    0.001 K/sec                  
S0-C2           1               1192      page-faults               #    0.014 K/sec                  
S0-C2           1       131700944559      cycles                    #    1.493 GHz                    
S0-C2           1        21450480457      instructions              #    0.16  insn per cycle         
S0-C2           1         1204112827      branches                  #   13.646 M/sec                  
S0-C2           1           96742356      branch-misses             #    8.03% of all branches        
S0-C3           1           88241.02 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               7920      context-switches          #    0.090 K/sec                  
S0-C3           1                 51      cpu-migrations            #    0.001 K/sec                  
S0-C3           1               1012      page-faults               #    0.011 K/sec                  
S0-C3           1       131972306044      cycles                    #    1.496 GHz                    
S0-C3           1        21404576828      instructions              #    0.16  insn per cycle         
S0-C3           1         1204093849      branches                  #   13.646 M/sec                  
S0-C3           1           98778949      branch-misses             #    8.20% of all branches        

      88.243249362 seconds time elapsed

================================================================================
perf stat -o 104_hydro2d.log --per-core -a taskset -c 0-3 ./spec95_104_hydro2d.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:22:52 2021


 Performance counter stats for 'system wide':

S0-C0           1           70270.98 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               8164      context-switches          #    0.116 K/sec                  
S0-C0           1                 67      cpu-migrations            #    0.001 K/sec                  
S0-C0           1               1008      page-faults               #    0.014 K/sec                  
S0-C0           1       105373373978      cycles                    #    1.500 GHz                    
S0-C0           1        31493610714      instructions              #    0.30  insn per cycle         
S0-C0           1         2618762413      branches                  #   37.267 M/sec                  
S0-C0           1           22812653      branch-misses             #    0.87% of all branches        
S0-C1           1           70271.02 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               2611      context-switches          #    0.037 K/sec                  
S0-C1           1                 81      cpu-migrations            #    0.001 K/sec                  
S0-C1           1                945      page-faults               #    0.013 K/sec                  
S0-C1           1       105217584608      cycles                    #    1.497 GHz                    
S0-C1           1        31429191962      instructions              #    0.30  insn per cycle         
S0-C1           1         2606780429      branches                  #   37.096 M/sec                  
S0-C1           1           18017083      branch-misses             #    0.69% of all branches        
S0-C2           1           70270.99 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               4109      context-switches          #    0.058 K/sec                  
S0-C2           1                 61      cpu-migrations            #    0.001 K/sec                  
S0-C2           1                740      page-faults               #    0.011 K/sec                  
S0-C2           1       105280905522      cycles                    #    1.498 GHz                    
S0-C2           1        31458477791      instructions              #    0.30  insn per cycle         
S0-C2           1         2614978054      branches                  #   37.213 M/sec                  
S0-C2           1           22272800      branch-misses             #    0.85% of all branches        
S0-C3           1           70271.26 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               6090      context-switches          #    0.087 K/sec                  
S0-C3           1                 40      cpu-migrations            #    0.001 K/sec                  
S0-C3           1                928      page-faults               #    0.013 K/sec                  
S0-C3           1       105228775447      cycles                    #    1.497 GHz                    
S0-C3           1        31471258180      instructions              #    0.30  insn per cycle         
S0-C3           1         2618768953      branches                  #   37.267 M/sec                  
S0-C3           1           23802923      branch-misses             #    0.91% of all branches        

      70.273386979 seconds time elapsed

================================================================================
perf stat -o 107_mgrid.log --per-core -a taskset -c 0-3 ./spec95_107_mgrid.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:24:02 2021


 Performance counter stats for 'system wide':

S0-C0           1           57674.63 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               4836      context-switches          #    0.084 K/sec                  
S0-C0           1                 56      cpu-migrations            #    0.001 K/sec                  
S0-C0           1                316      page-faults               #    0.005 K/sec                  
S0-C0           1        86309234506      cycles                    #    1.496 GHz                    
S0-C0           1        30218464457      instructions              #    0.35  insn per cycle         
S0-C0           1          721015578      branches                  #   12.501 M/sec                  
S0-C0           1           42874074      branch-misses             #    5.95% of all branches        
S0-C1           1           57674.60 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               5975      context-switches          #    0.104 K/sec                  
S0-C1           1                 72      cpu-migrations            #    0.001 K/sec                  
S0-C1           1               1161      page-faults               #    0.020 K/sec                  
S0-C1           1        86333592822      cycles                    #    1.497 GHz                    
S0-C1           1        30211835016      instructions              #    0.35  insn per cycle         
S0-C1           1          712511555      branches                  #   12.354 M/sec                  
S0-C1           1           37578871      branch-misses             #    5.27% of all branches        
S0-C2           1           57674.24 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               4976      context-switches          #    0.086 K/sec                  
S0-C2           1                 63      cpu-migrations            #    0.001 K/sec                  
S0-C2           1               1779      page-faults               #    0.031 K/sec                  
S0-C2           1        86474877004      cycles                    #    1.499 GHz                    
S0-C2           1        30263080161      instructions              #    0.35  insn per cycle         
S0-C2           1          719219932      branches                  #   12.470 M/sec                  
S0-C2           1           39727479      branch-misses             #    5.52% of all branches        
S0-C3           1           57674.29 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               3101      context-switches          #    0.054 K/sec                  
S0-C3           1                 47      cpu-migrations            #    0.001 K/sec                  
S0-C3           1               1176      page-faults               #    0.020 K/sec                  
S0-C3           1        86276144557      cycles                    #    1.496 GHz                    
S0-C3           1        30183820875      instructions              #    0.35  insn per cycle         
S0-C3           1          710368721      branches                  #   12.317 M/sec                  
S0-C3           1           37640144      branch-misses             #    5.30% of all branches        

      57.677476164 seconds time elapsed

================================================================================
perf stat -o 110_applu.log --per-core -a taskset -c 0-3 ./spec95_110_applu.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:25:00 2021


 Performance counter stats for 'system wide':

S0-C0           1           66321.11 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               4855      context-switches          #    0.073 K/sec                  
S0-C0           1                 52      cpu-migrations            #    0.001 K/sec                  
S0-C0           1               1134      page-faults               #    0.017 K/sec                  
S0-C0           1        99452504869      cycles                    #    1.500 GHz                    
S0-C0           1        21862272430      instructions              #    0.22  insn per cycle         
S0-C0           1          349714531      branches                  #    5.273 M/sec                  
S0-C0           1           14764402      branch-misses             #    4.22% of all branches        
S0-C1           1           66321.10 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               3853      context-switches          #    0.058 K/sec                  
S0-C1           1                 59      cpu-migrations            #    0.001 K/sec                  
S0-C1           1               1179      page-faults               #    0.018 K/sec                  
S0-C1           1        99426735278      cycles                    #    1.499 GHz                    
S0-C1           1        21833845017      instructions              #    0.22  insn per cycle         
S0-C1           1          344775453      branches                  #    5.199 M/sec                  
S0-C1           1           13013118      branch-misses             #    3.77% of all branches        
S0-C2           1           66321.12 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               5576      context-switches          #    0.084 K/sec                  
S0-C2           1                 54      cpu-migrations            #    0.001 K/sec                  
S0-C2           1                989      page-faults               #    0.015 K/sec                  
S0-C2           1        99414604631      cycles                    #    1.499 GHz                    
S0-C2           1        21864637960      instructions              #    0.22  insn per cycle         
S0-C2           1          346611345      branches                  #    5.226 M/sec                  
S0-C2           1           12389497      branch-misses             #    3.57% of all branches        
S0-C3           1           66321.12 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               5822      context-switches          #    0.088 K/sec                  
S0-C3           1                 35      cpu-migrations            #    0.001 K/sec                  
S0-C3           1               1204      page-faults               #    0.018 K/sec                  
S0-C3           1        99459453150      cycles                    #    1.500 GHz                    
S0-C3           1        21869748412      instructions              #    0.22  insn per cycle         
S0-C3           1          353897929      branches                  #    5.336 M/sec                  
S0-C3           1           16986157      branch-misses             #    4.80% of all branches        

      66.323298164 seconds time elapsed

================================================================================
perf stat -o 125_turb3d.log --per-core -a taskset -c 0-3 ./spec95_125_turb3d.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:26:06 2021


 Performance counter stats for 'system wide':

S0-C0           1           68546.73 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               3068      context-switches          #    0.045 K/sec                  
S0-C0           1                 63      cpu-migrations            #    0.001 K/sec                  
S0-C0           1               1086      page-faults               #    0.016 K/sec                  
S0-C0           1       102709024085      cycles                    #    1.498 GHz                    
S0-C0           1        61952272620      instructions              #    0.60  insn per cycle         
S0-C0           1         3562193897      branches                  #   51.967 M/sec                  
S0-C0           1          268042665      branch-misses             #    7.52% of all branches        
S0-C1           1           68546.77 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               4805      context-switches          #    0.070 K/sec                  
S0-C1           1                 64      cpu-migrations            #    0.001 K/sec                  
S0-C1           1                908      page-faults               #    0.013 K/sec                  
S0-C1           1       102726543830      cycles                    #    1.499 GHz                    
S0-C1           1        61960109517      instructions              #    0.60  insn per cycle         
S0-C1           1         3566451497      branches                  #   52.029 M/sec                  
S0-C1           1          265563236      branch-misses             #    7.45% of all branches        
S0-C2           1           68546.73 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               5804      context-switches          #    0.085 K/sec                  
S0-C2           1                 47      cpu-migrations            #    0.001 K/sec                  
S0-C2           1                976      page-faults               #    0.014 K/sec                  
S0-C2           1       102675003136      cycles                    #    1.498 GHz                    
S0-C2           1        62035820876      instructions              #    0.60  insn per cycle         
S0-C2           1         3570430470      branches                  #   52.088 M/sec                  
S0-C2           1          266924714      branch-misses             #    7.48% of all branches        
S0-C3           1           68546.73 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               6821      context-switches          #    0.100 K/sec                  
S0-C3           1                 34      cpu-migrations            #    0.000 K/sec                  
S0-C3           1               1065      page-faults               #    0.016 K/sec                  
S0-C3           1       102790876311      cycles                    #    1.500 GHz                    
S0-C3           1        61993230126      instructions              #    0.60  insn per cycle         
S0-C3           1         3575035757      branches                  #   52.155 M/sec                  
S0-C3           1          270991077      branch-misses             #    7.58% of all branches        

      68.548813783 seconds time elapsed

================================================================================
perf stat -o 126_gcc.log --per-core -a taskset -c 0-3 ./spec95_126_gcc.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:27:15 2021


 Performance counter stats for 'system wide':

S0-C0           1            3689.82 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1                626      context-switches          #    0.170 K/sec                  
S0-C0           1                 15      cpu-migrations            #    0.004 K/sec                  
S0-C0           1               4561      page-faults               #    0.001 M/sec                  
S0-C0           1         5451314195      cycles                    #    1.477 GHz                    
S0-C0           1         3343428295      instructions              #    0.61  insn per cycle         
S0-C0           1          458016856      branches                  #  124.130 M/sec                  
S0-C0           1           75528473      branch-misses             #   16.49% of all branches        
S0-C1           1            3689.82 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1                318      context-switches          #    0.086 K/sec                  
S0-C1           1                 15      cpu-migrations            #    0.004 K/sec                  
S0-C1           1               4364      page-faults               #    0.001 M/sec                  
S0-C1           1         5444470788      cycles                    #    1.476 GHz                    
S0-C1           1         3336268235      instructions              #    0.61  insn per cycle         
S0-C1           1          456126177      branches                  #  123.617 M/sec                  
S0-C1           1           74488355      branch-misses             #   16.33% of all branches        
S0-C2           1            3689.82 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1                420      context-switches          #    0.114 K/sec                  
S0-C2           1                 22      cpu-migrations            #    0.006 K/sec                  
S0-C2           1               4340      page-faults               #    0.001 M/sec                  
S0-C2           1         5454975959      cycles                    #    1.478 GHz                    
S0-C2           1         3340090616      instructions              #    0.61  insn per cycle         
S0-C2           1          456889834      branches                  #  123.824 M/sec                  
S0-C2           1           74818370      branch-misses             #   16.38% of all branches        
S0-C3           1            3689.49 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1                390      context-switches          #    0.106 K/sec                  
S0-C3           1                 13      cpu-migrations            #    0.004 K/sec                  
S0-C3           1               4645      page-faults               #    0.001 M/sec                  
S0-C3           1         5408128813      cycles                    #    1.466 GHz                    
S0-C3           1         3335878901      instructions              #    0.62  insn per cycle         
S0-C3           1          456440289      branches                  #  123.714 M/sec                  
S0-C3           1           74815091      branch-misses             #   16.39% of all branches        

       3.691273739 seconds time elapsed

================================================================================
perf stat -o 129_compress.log --per-core -a taskset -c 0-3 ./spec95_129_compress.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:27:18 2021


 Performance counter stats for 'system wide':

S0-C0           1           95050.74 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               8318      context-switches          #    0.088 K/sec                  
S0-C0           1                 80      cpu-migrations            #    0.001 K/sec                  
S0-C0           1                692      page-faults               #    0.007 K/sec                  
S0-C0           1       141745075130      cycles                    #    1.491 GHz                    
S0-C0           1        35560672241      instructions              #    0.25  insn per cycle         
S0-C0           1         3697874943      branches                  #   38.904 M/sec                  
S0-C0           1          519047461      branch-misses             #   14.04% of all branches        
S0-C1           1           95050.74 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               2871      context-switches          #    0.030 K/sec                  
S0-C1           1                 93      cpu-migrations            #    0.001 K/sec                  
S0-C1           1                932      page-faults               #    0.010 K/sec                  
S0-C1           1       137967659851      cycles                    #    1.452 GHz                    
S0-C1           1        35485577138      instructions              #    0.26  insn per cycle         
S0-C1           1         3680950346      branches                  #   38.726 M/sec                  
S0-C1           1          511360436      branch-misses             #   13.89% of all branches        
S0-C2           1           95050.75 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               7650      context-switches          #    0.080 K/sec                  
S0-C2           1                 78      cpu-migrations            #    0.001 K/sec                  
S0-C2           1                876      page-faults               #    0.009 K/sec                  
S0-C2           1       142346877014      cycles                    #    1.498 GHz                    
S0-C2           1        35564554899      instructions              #    0.25  insn per cycle         
S0-C2           1         3698527227      branches                  #   38.911 M/sec                  
S0-C2           1          519447328      branch-misses             #   14.04% of all branches        
S0-C3           1           95050.75 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               8781      context-switches          #    0.092 K/sec                  
S0-C3           1                 45      cpu-migrations            #    0.000 K/sec                  
S0-C3           1                546      page-faults               #    0.006 K/sec                  
S0-C3           1       141890850215      cycles                    #    1.493 GHz                    
S0-C3           1        35566830092      instructions              #    0.25  insn per cycle         
S0-C3           1         3705289281      branches                  #   38.982 M/sec                  
S0-C3           1          523400791      branch-misses             #   14.13% of all branches        

      95.052775188 seconds time elapsed

================================================================================
perf stat -o 130_li.log --per-core -a taskset -c 0-3 ./spec95_130_li.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:28:54 2021


 Performance counter stats for 'system wide':

S0-C0           1           49321.74 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               1884      context-switches          #    0.038 K/sec                  
S0-C0           1                 65      cpu-migrations            #    0.001 K/sec                  
S0-C0           1                496      page-faults               #    0.010 K/sec                  
S0-C0           1        73950011937      cycles                    #    1.499 GHz                    
S0-C0           1        48475918858      instructions              #    0.66  insn per cycle         
S0-C0           1         6162003159      branches                  #  124.935 M/sec                  
S0-C0           1          780312566      branch-misses             #   12.66% of all branches        
S0-C1           1           49321.73 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               6646      context-switches          #    0.135 K/sec                  
S0-C1           1                 79      cpu-migrations            #    0.002 K/sec                  
S0-C1           1                455      page-faults               #    0.009 K/sec                  
S0-C1           1        73585403939      cycles                    #    1.492 GHz                    
S0-C1           1        48569681830      instructions              #    0.66  insn per cycle         
S0-C1           1         6176462077      branches                  #  125.228 M/sec                  
S0-C1           1          785980183      branch-misses             #   12.73% of all branches        
S0-C2           1           49321.71 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1                970      context-switches          #    0.020 K/sec                  
S0-C2           1                 56      cpu-migrations            #    0.001 K/sec                  
S0-C2           1                385      page-faults               #    0.008 K/sec                  
S0-C2           1        71199103220      cycles                    #    1.444 GHz                    
S0-C2           1        48484581650      instructions              #    0.68  insn per cycle         
S0-C2           1         6161026893      branches                  #  124.915 M/sec                  
S0-C2           1          781404136      branch-misses             #   12.68% of all branches        
S0-C3           1           49322.15 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               6575      context-switches          #    0.133 K/sec                  
S0-C3           1                 55      cpu-migrations            #    0.001 K/sec                  
S0-C3           1                235      page-faults               #    0.005 K/sec                  
S0-C3           1        73843226352      cycles                    #    1.497 GHz                    
S0-C3           1        48516168943      instructions              #    0.66  insn per cycle         
S0-C3           1         6171006660      branches                  #  125.116 M/sec                  
S0-C3           1          786276134      branch-misses             #   12.74% of all branches        

      49.325817381 seconds time elapsed

================================================================================
perf stat -o 132_ijpeg.log --per-core -a taskset -c 0-3 ./spec95_132_ijpeg.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:29:43 2021


 Performance counter stats for 'system wide':

S0-C0           1           13967.33 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               1445      context-switches          #    0.103 K/sec                  
S0-C0           1                 31      cpu-migrations            #    0.002 K/sec                  
S0-C0           1               2287      page-faults               #    0.164 K/sec                  
S0-C0           1        20814942815      cycles                    #    1.490 GHz                    
S0-C0           1        21783239849      instructions              #    1.05  insn per cycle         
S0-C0           1         1112504658      branches                  #   79.650 M/sec                  
S0-C0           1          191778952      branch-misses             #   17.24% of all branches        
S0-C1           1           13967.29 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               1031      context-switches          #    0.074 K/sec                  
S0-C1           1                 27      cpu-migrations            #    0.002 K/sec                  
S0-C1           1               3042      page-faults               #    0.218 K/sec                  
S0-C1           1        20831875656      cycles                    #    1.491 GHz                    
S0-C1           1        21835908080      instructions              #    1.05  insn per cycle         
S0-C1           1         1121236779      branches                  #   80.276 M/sec                  
S0-C1           1          191018921      branch-misses             #   17.04% of all branches        
S0-C2           1           13967.30 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               1370      context-switches          #    0.098 K/sec                  
S0-C2           1                 31      cpu-migrations            #    0.002 K/sec                  
S0-C2           1               2782      page-faults               #    0.199 K/sec                  
S0-C2           1        18175767231      cycles                    #    1.301 GHz                    
S0-C2           1        19112467036      instructions              #    1.05  insn per cycle         
S0-C2           1          971295570      branches                  #   69.541 M/sec                  
S0-C2           1          157601686      branch-misses             #   16.23% of all branches        
S0-C3           1           13967.30 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               1133      context-switches          #    0.081 K/sec                  
S0-C3           1                 33      cpu-migrations            #    0.002 K/sec                  
S0-C3           1               2547      page-faults               #    0.182 K/sec                  
S0-C3           1        19895775927      cycles                    #    1.424 GHz                    
S0-C3           1        20996474194      instructions              #    1.06  insn per cycle         
S0-C3           1         1066817421      branches                  #   76.380 M/sec                  
S0-C3           1          177159252      branch-misses             #   16.61% of all branches        

      13.969875573 seconds time elapsed

================================================================================
perf stat -o 134_perl.log --per-core -a taskset -c 0-3 ./spec95_134_perl.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:29:57 2021


 Performance counter stats for 'system wide':

S0-C0           1           19239.73 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               1697      context-switches          #    0.088 K/sec                  
S0-C0           1                 29      cpu-migrations            #    0.002 K/sec                  
S0-C0           1               9223      page-faults               #    0.479 K/sec                  
S0-C0           1        28510211391      cycles                    #    1.482 GHz                    
S0-C0           1        22314224294      instructions              #    0.78  insn per cycle         
S0-C0           1         2742149908      branches                  #  142.525 M/sec                  
S0-C0           1          218372429      branch-misses             #    7.96% of all branches        
S0-C1           1           19239.90 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               1843      context-switches          #    0.096 K/sec                  
S0-C1           1                 32      cpu-migrations            #    0.002 K/sec                  
S0-C1           1               9275      page-faults               #    0.482 K/sec                  
S0-C1           1        28655280809      cycles                    #    1.489 GHz                    
S0-C1           1        22310712268      instructions              #    0.78  insn per cycle         
S0-C1           1         2741756766      branches                  #  142.504 M/sec                  
S0-C1           1          213896478      branch-misses             #    7.80% of all branches        
S0-C2           1           19239.86 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1                908      context-switches          #    0.047 K/sec                  
S0-C2           1                 35      cpu-migrations            #    0.002 K/sec                  
S0-C2           1               9174      page-faults               #    0.477 K/sec                  
S0-C2           1        28797909882      cycles                    #    1.497 GHz                    
S0-C2           1        22303727139      instructions              #    0.77  insn per cycle         
S0-C2           1         2740210872      branches                  #  142.424 M/sec                  
S0-C2           1          212291439      branch-misses             #    7.75% of all branches        
S0-C3           1           19239.86 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               1725      context-switches          #    0.090 K/sec                  
S0-C3           1                 26      cpu-migrations            #    0.001 K/sec                  
S0-C3           1               9327      page-faults               #    0.485 K/sec                  
S0-C3           1        28422747244      cycles                    #    1.477 GHz                    
S0-C3           1        22309701720      instructions              #    0.78  insn per cycle         
S0-C3           1         2741533871      branches                  #  142.492 M/sec                  
S0-C3           1          213147515      branch-misses             #    7.77% of all branches        

      19.242114731 seconds time elapsed

================================================================================
perf stat -o 141_apsi.log --per-core -a taskset -c 0-3 ./spec95_141_apsi.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:30:16 2021


 Performance counter stats for 'system wide':

S0-C0           1           32803.69 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               2026      context-switches          #    0.062 K/sec                  
S0-C0           1                 61      cpu-migrations            #    0.002 K/sec                  
S0-C0           1                888      page-faults               #    0.027 K/sec                  
S0-C0           1        49065009051      cycles                    #    1.496 GHz                    
S0-C0           1        19233058377      instructions              #    0.39  insn per cycle         
S0-C0           1          866768533      branches                  #   26.423 M/sec                  
S0-C0           1           29097108      branch-misses             #    3.36% of all branches        
S0-C1           1           32803.65 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               3432      context-switches          #    0.105 K/sec                  
S0-C1           1                 79      cpu-migrations            #    0.002 K/sec                  
S0-C1           1               1017      page-faults               #    0.031 K/sec                  
S0-C1           1        48388019308      cycles                    #    1.475 GHz                    
S0-C1           1        19212411368      instructions              #    0.40  insn per cycle         
S0-C1           1          864753848      branches                  #   26.362 M/sec                  
S0-C1           1           29236730      branch-misses             #    3.38% of all branches        
S0-C2           1           32804.06 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               3198      context-switches          #    0.097 K/sec                  
S0-C2           1                 58      cpu-migrations            #    0.002 K/sec                  
S0-C2           1                944      page-faults               #    0.029 K/sec                  
S0-C2           1        48793717759      cycles                    #    1.487 GHz                    
S0-C2           1        19223495493      instructions              #    0.39  insn per cycle         
S0-C2           1          866240418      branches                  #   26.407 M/sec                  
S0-C2           1           29863181      branch-misses             #    3.45% of all branches        
S0-C3           1           32804.01 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               2641      context-switches          #    0.081 K/sec                  
S0-C3           1                 35      cpu-migrations            #    0.001 K/sec                  
S0-C3           1               1051      page-faults               #    0.032 K/sec                  
S0-C3           1        49160759064      cycles                    #    1.499 GHz                    
S0-C3           1        19210661276      instructions              #    0.39  insn per cycle         
S0-C3           1          865161507      branches                  #   26.374 M/sec                  
S0-C3           1           29456776      branch-misses             #    3.40% of all branches        

      32.807422046 seconds time elapsed

================================================================================
perf stat -o 145_fpppp.log --per-core -a taskset -c 0-3 ./spec95_145_fpppp.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:30:49 2021


 Performance counter stats for 'system wide':

S0-C0           1           91609.63 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               8644      context-switches          #    0.094 K/sec                  
S0-C0           1                 69      cpu-migrations            #    0.001 K/sec                  
S0-C0           1                442      page-faults               #    0.005 K/sec                  
S0-C0           1       137378788524      cycles                    #    1.500 GHz                    
S0-C0           1       102499567746      instructions              #    0.75  insn per cycle         
S0-C0           1         1275168475      branches                  #   13.920 M/sec                  
S0-C0           1          103623249      branch-misses             #    8.13% of all branches        
S0-C1           1           91609.61 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               8071      context-switches          #    0.088 K/sec                  
S0-C1           1                 95      cpu-migrations            #    0.001 K/sec                  
S0-C1           1                180      page-faults               #    0.002 K/sec                  
S0-C1           1       137059605362      cycles                    #    1.496 GHz                    
S0-C1           1       102453357926      instructions              #    0.75  insn per cycle         
S0-C1           1         1264196413      branches                  #   13.800 M/sec                  
S0-C1           1           98612998      branch-misses             #    7.80% of all branches        
S0-C2           1           91609.78 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               8199      context-switches          #    0.089 K/sec                  
S0-C2           1                 80      cpu-migrations            #    0.001 K/sec                  
S0-C2           1                496      page-faults               #    0.005 K/sec                  
S0-C2           1       137199590496      cycles                    #    1.498 GHz                    
S0-C2           1       102558752910      instructions              #    0.75  insn per cycle         
S0-C2           1         1275325287      branches                  #   13.921 M/sec                  
S0-C2           1          100257228      branch-misses             #    7.86% of all branches        
S0-C3           1           91609.74 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               2139      context-switches          #    0.023 K/sec                  
S0-C3           1                 59      cpu-migrations            #    0.001 K/sec                  
S0-C3           1                238      page-faults               #    0.003 K/sec                  
S0-C3           1       136947260324      cycles                    #    1.495 GHz                    
S0-C3           1       102395280648      instructions              #    0.75  insn per cycle         
S0-C3           1         1248082564      branches                  #   13.624 M/sec                  
S0-C3           1           90618507      branch-misses             #    7.26% of all branches        

      91.614027964 seconds time elapsed

================================================================================
perf stat -o 146_wave5.log --per-core -a taskset -c 0-3 ./spec95_146_wave5.sh -n 4
/root/i-benchmarks/spec_95/bin
# started on Fri Mar  5 17:32:21 2021


 Performance counter stats for 'system wide':

S0-C0           1           43025.92 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               3598      context-switches          #    0.084 K/sec                  
S0-C0           1                 44      cpu-migrations            #    0.001 K/sec                  
S0-C0           1                769      page-faults               #    0.018 K/sec                  
S0-C0           1        64345272618      cycles                    #    1.496 GHz                    
S0-C0           1        19667847598      instructions              #    0.31  insn per cycle         
S0-C0           1         1321084879      branches                  #   30.704 M/sec                  
S0-C0           1           17117530      branch-misses             #    1.30% of all branches        
S0-C1           1           43025.96 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               2411      context-switches          #    0.056 K/sec                  
S0-C1           1                 52      cpu-migrations            #    0.001 K/sec                  
S0-C1           1                893      page-faults               #    0.021 K/sec                  
S0-C1           1        64492228112      cycles                    #    1.499 GHz                    
S0-C1           1        19643045278      instructions              #    0.30  insn per cycle         
S0-C1           1         1315749277      branches                  #   30.580 M/sec                  
S0-C1           1           14762116      branch-misses             #    1.12% of all branches        
S0-C2           1           43025.97 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               3969      context-switches          #    0.092 K/sec                  
S0-C2           1                 38      cpu-migrations            #    0.001 K/sec                  
S0-C2           1                971      page-faults               #    0.023 K/sec                  
S0-C2           1        64342954133      cycles                    #    1.495 GHz                    
S0-C2           1        19675705724      instructions              #    0.31  insn per cycle         
S0-C2           1         1321269704      branches                  #   30.709 M/sec                  
S0-C2           1           17100103      branch-misses             #    1.29% of all branches        
S0-C3           1           43025.97 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               3574      context-switches          #    0.083 K/sec                  
S0-C3           1                 29      cpu-migrations            #    0.001 K/sec                  
S0-C3           1               1006      page-faults               #    0.023 K/sec                  
S0-C3           1        64328711935      cycles                    #    1.495 GHz                    
S0-C3           1        19649230604      instructions              #    0.31  insn per cycle         
S0-C3           1         1317463316      branches                  #   30.620 M/sec                  
S0-C3           1           15601832      branch-misses             #    1.18% of all branches        

      43.029471922 seconds time elapsed

================================================================================
perf stat -o 147_vortex.log --per-core -a taskset -c 0-3 ./spec95_147_vortex.sh -n 4
/root/i-benchmarks/spec_95/bin
	Command being timed: "perf stat -o 147_vortex.log --per-core -a taskset -c 0-3 ./spec95_147_vortex.sh -n 4"
	User time (seconds): 210.34
	System time (seconds): 0.37
	Percent of CPU this job got: 393%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 0:53.56
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 43832
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 11
	Minor (reclaiming a frame) page faults: 48490
	Voluntary context switches: 701
	Involuntary context switches: 7006
	Swaps: 0
	File system inputs: 6768
	File system outputs: 144
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0
# started on Fri Mar  5 17:33:04 2021


 Performance counter stats for 'system wide':

S0-C0           1           53529.85 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1               6011      context-switches          #    0.112 K/sec                  
S0-C0           1                 56      cpu-migrations            #    0.001 K/sec                  
S0-C0           1              11281      page-faults               #    0.211 K/sec                  
S0-C0           1        80100862949      cycles                    #    1.496 GHz                    
S0-C0           1        59250443512      instructions              #    0.74  insn per cycle         
S0-C0           1         5840294173      branches                  #  109.103 M/sec                  
S0-C0           1          101452217      branch-misses             #    1.74% of all branches        
S0-C1           1           53529.79 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1               2944      context-switches          #    0.055 K/sec                  
S0-C1           1                 96      cpu-migrations            #    0.002 K/sec                  
S0-C1           1              12049      page-faults               #    0.225 K/sec                  
S0-C1           1        80008668703      cycles                    #    1.495 GHz                    
S0-C1           1        59213838737      instructions              #    0.74  insn per cycle         
S0-C1           1         5829029296      branches                  #  108.893 M/sec                  
S0-C1           1           97785861      branch-misses             #    1.68% of all branches        
S0-C2           1           53529.83 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1               5354      context-switches          #    0.100 K/sec                  
S0-C2           1                 92      cpu-migrations            #    0.002 K/sec                  
S0-C2           1              12092      page-faults               #    0.226 K/sec                  
S0-C2           1        80132036225      cycles                    #    1.497 GHz                    
S0-C2           1        59351878284      instructions              #    0.74  insn per cycle         
S0-C2           1         5848132244      branches                  #  109.250 M/sec                  
S0-C2           1          101916414      branch-misses             #    1.74% of all branches        
S0-C3           1           53529.84 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1               3429      context-switches          #    0.064 K/sec                  
S0-C3           1                 80      cpu-migrations            #    0.001 K/sec                  
S0-C3           1              12378      page-faults               #    0.231 K/sec                  
S0-C3           1        79919261706      cycles                    #    1.493 GHz                    
S0-C3           1        59228631557      instructions              #    0.74  insn per cycle         
S0-C3           1         5831555702      branches                  #  108.940 M/sec                  
S0-C3           1           98732435      branch-misses             #    1.69% of all branches        

      53.531363952 seconds time elapsed

================================================================================
perf stat -o aes_benchmark.log --per-core -a taskset -c 0-3 ./aes_benchmark 4
SUCCESS::pthread_create() succeeded
SUCCESS::pthread_create() succeeded
SUCCESS::pthread_create() succeeded
SUCCESS::pthread_create() succeeded
AES Tests: SUCCEEDED
AES Tests: SUCCEEDED
AES Tests: SUCCEEDED
AES Tests: SUCCEEDED
# started on Fri Mar  5 17:33:57 2021


 Performance counter stats for 'system wide':

S0-C0           1            3876.05 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C0           1                678      context-switches          #    0.175 K/sec                  
S0-C0           1                 16      cpu-migrations            #    0.004 K/sec                  
S0-C0           1                155      page-faults               #    0.040 K/sec                  
S0-C0           1         5740017043      cycles                    #    1.481 GHz                    
S0-C0           1         7735588037      instructions              #    1.35  insn per cycle         
S0-C0           1          180125561      branches                  #   46.471 M/sec                  
S0-C0           1            4008955      branch-misses             #    2.23% of all branches        
S0-C1           1            3876.05 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C1           1                683      context-switches          #    0.176 K/sec                  
S0-C1           1                 89      cpu-migrations            #    0.023 K/sec                  
S0-C1           1                516      page-faults               #    0.133 K/sec                  
S0-C1           1         5711461164      cycles                    #    1.474 GHz                    
S0-C1           1         7727147766      instructions              #    1.35  insn per cycle         
S0-C1           1          177451894      branches                  #   45.782 M/sec                  
S0-C1           1            2685911      branch-misses             #    1.51% of all branches        
S0-C2           1            3876.05 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C2           1                777      context-switches          #    0.200 K/sec                  
S0-C2           1                 71      cpu-migrations            #    0.018 K/sec                  
S0-C2           1                433      page-faults               #    0.112 K/sec                  
S0-C2           1         5728383108      cycles                    #    1.478 GHz                    
S0-C2           1         7732853372      instructions              #    1.35  insn per cycle         
S0-C2           1          179140950      branches                  #   46.217 M/sec                  
S0-C2           1            3632317      branch-misses             #    2.03% of all branches        
S0-C3           1            3876.03 msec cpu-clock                 #    1.000 CPUs utilized          
S0-C3           1                912      context-switches          #    0.235 K/sec                  
S0-C3           1                 83      cpu-migrations            #    0.021 K/sec                  
S0-C3           1                544      page-faults               #    0.140 K/sec                  
S0-C3           1         5724343088      cycles                    #    1.477 GHz                    
S0-C3           1         7732386935      instructions              #    1.35  insn per cycle         
S0-C3           1          178600040      branches                  #   46.078 M/sec                  
S0-C3           1            3153187      branch-misses             #    1.77% of all branches        

       3.877506285 seconds time elapsed

================================================================================
This benchmark has been compiled to use 16 threads. You have to repcompile it if you want to use different number of threads. See ../install/setup.sh for details.
cp: cannot stat 'coremark_benchmark.log': No such file or directory
================================================================================
================================================================================
Printing results
File: 130_li.txt
instructions: 194046351281
=(48475918858+48569681830+48484581650+48516168943)
frequencies: 1.483
=(1.499+1.492+1.444+1.497)/4
ipcs:0.67
=1*(0.66+0.66+0.68+0.66)/4

File: run_forest_importances_faces.txt
instructions: 31194166093
=(7331055014+7847101409+7810135179+8205874491)
frequencies: 1.087
=(1.034+1.091+1.094+1.130)/4
ipcs:0.35
=1*(0.35+0.35+0.35+0.36)/4

File: lda_perf_output_1614964197448905096.txt
instructions: 30686766047
=(7713905052+7746427531+7566189246+7660244218)
frequencies: 1.483
=(1.482+1.486+1.483+1.481)/4
ipcs:0.64
=1*(0.64+0.64+0.63+0.64)/4

File: NaiveBayes_perf_output_1614964205676999695.txt
instructions: 94165134979
=(23510770838+23553082298+23495176619+23606105224)
frequencies: 1.484
=(1.483+1.484+1.485+1.484)/4
ipcs:0.87
=1*(0.87+0.87+0.86+0.87)/4

File: 146_wave5.txt
instructions: 78635829204
=(19667847598+19643045278+19675705724+19649230604)
frequencies: 1.496
=(1.496+1.499+1.495+1.495)/4
ipcs:0.31
=1*(0.31+0.30+0.31+0.31)/4

File: word2vec_perf_output_1614963943217855862.txt
instructions: 234043282966
=(58154268006+59514807168+58285890493+58088317299)
frequencies: 1.448
=(1.439+1.482+1.435+1.436)/4
ipcs:0.60
=1*(0.60+0.60+0.60+0.60)/4

File: 101_tomcatv.txt
instructions: 64286088961
=(15991222582+16058153006+16048792051+16187921322)
frequencies: 1.494
=(1.487+1.498+1.498+1.493)/4
ipcs:0.18
=1*(0.18+0.18+0.18+0.18)/4

File: 145_fpppp.txt
instructions: 409906959230
=(102499567746+102453357926+102558752910+102395280648)
frequencies: 1.497
=(1.500+1.496+1.498+1.495)/4
ipcs:0.75
=1*(0.75+0.75+0.75+0.75)/4

File: word2vec_perf_output_no_branch_1614963943221111833.txt
instructions: 166453589288
=(41850254175+43194734315+40244621064+41163979734)
frequencies: 1.413
=(1.423+1.455+1.371+1.403)/4
ipcs:0.39
=1*(0.39+0.40+0.39+0.39)/4

File: run_plot_svm_nonlinear.txt
instructions: 36345530122
=(9011607196+9076752773+9140408601+9116761552)
frequencies: 1.413
=(1.407+1.415+1.422+1.409)/4
ipcs:0.57
=1*(0.57+0.57+0.57+0.58)/4

File: go_word2vec_4_threads.txt
instructions: 90282067404
=(23874318983+20558835604+21169008699+24679904118)
frequencies: 1.250
=(1.296+1.170+1.206+1.327)/4
ipcs:0.69
=1*(0.71+0.67+0.67+0.71)/4

File: grep_perf_output_1614964085880980937.txt
instructions: 190652106474
=(40229229900+46886624162+50925568272+52610684140)
frequencies: 0.553
=(0.517+0.533+0.577+0.585)/4
ipcs:0.77
=1*(0.70+0.79+0.79+0.81)/4

File: 103_su2cor.txt
instructions: 85667264395
=(21453755533+21358451577+21450480457+21404576828)
frequencies: 1.496
=(1.499+1.496+1.493+1.496)/4
ipcs:0.16
=1*(0.16+0.16+0.16+0.16)/4

File: 134_perl.txt
instructions: 89238365421
=(22314224294+22310712268+22303727139+22309701720)
frequencies: 1.486
=(1.482+1.489+1.497+1.477)/4
ipcs:0.78
=1*(0.78+0.78+0.77+0.78)/4

File: 125_turb3d.txt
instructions: 247941433139
=(61952272620+61960109517+62035820876+61993230126)
frequencies: 1.499
=(1.498+1.499+1.498+1.500)/4
ipcs:0.60
=1*(0.60+0.60+0.60+0.60)/4

File: 132_ijpeg.txt
instructions: 83728089159
=(21783239849+21835908080+19112467036+20996474194)
frequencies: 1.426
=(1.490+1.491+1.301+1.424)/4
ipcs:1.05
=1*(1.05+1.05+1.05+1.06)/4

File: 110_applu.txt
instructions: 87430503819
=(21862272430+21833845017+21864637960+21869748412)
frequencies: 1.500
=(1.500+1.499+1.499+1.500)/4
ipcs:0.22
=1*(0.22+0.22+0.22+0.22)/4

File: 102_swim.txt
instructions: 24330003538
=(6080855661+6062406025+6112898967+6073842885)
frequencies: 1.499
=(1.499+1.498+1.499+1.499)/4
ipcs:0.07
=1*(0.07+0.07+0.07+0.07)/4

File: 129_compress.txt
instructions: 142177634370
=(35560672241+35485577138+35564554899+35566830092)
frequencies: 1.484
=(1.491+1.452+1.498+1.493)/4
ipcs:0.25
=1*(0.25+0.26+0.25+0.25)/4

File: wordcounts_perf_output_1614964224071304825.txt
instructions: 50811692161
=(12691773712+12805839531+12743956232+12570122686)
frequencies: 1.490
=(1.492+1.491+1.491+1.484)/4
ipcs:0.79
=1*(0.79+0.79+0.79+0.78)/4

File: run_multioutput_face_completion.txt
instructions: 69195940404
=(7998882178+15499624612+24670131476+21027302138)
frequencies: 0.961
=(0.504+0.793+1.328+1.218)/4
ipcs:0.44
=1*(0.39+0.48+0.46+0.43)/4

File: spec_mcf.txt
instructions: 233111845692
=(53495651734+67556502321+54465443015+57594248622)
frequencies: 1.335
=(1.258+1.483+1.262+1.335)/4
ipcs:0.17
=1*(0.17+0.18+0.17+0.17)/4

File: kmeans_perf_output_1614964234959156999.txt
instructions: 28521551713
=(7191005746+7218835756+6904089001+7207621210)
frequencies: 1.448
=(1.486+1.486+1.333+1.486)/4
ipcs:0.77
=1*(0.75+0.76+0.81+0.76)/4

File: 107_mgrid.txt
instructions: 120877200509
=(30218464457+30211835016+30263080161+30183820875)
frequencies: 1.497
=(1.496+1.497+1.499+1.496)/4
ipcs:0.35
=1*(0.35+0.35+0.35+0.35)/4

File: sort_perf_output_1614964302724546327.txt
instructions: 43704111604
=(9648202244+11268369684+11290217726+11497321950)
frequencies: 1.029
=(0.947+1.051+1.058+1.059)/4
ipcs:0.67
=1*(0.64+0.68+0.67+0.69)/4

File: sqlite_4_threads.txt
instructions: 19572872535
=(4951596759+4871266880+4875106702+4874902194)
frequencies: 0.923
=(0.939+0.916+0.919+0.917)/4
ipcs:0.68
=1*(0.68+0.68+0.68+0.68)/4

File: run_plot_theilsen.txt
instructions: 34580465657
=(6033285476+10428097315+11059739512+7059343354)
frequencies: 0.998
=(0.784+1.107+1.165+0.935)/4
ipcs:0.39
=1*(0.35+0.43+0.43+0.34)/4

File: 147_vortex.txt
instructions: 237044792090
=(59250443512+59213838737+59351878284+59228631557)
frequencies: 1.495
=(1.496+1.495+1.497+1.493)/4
ipcs:0.74
=1*(0.74+0.74+0.74+0.74)/4

File: 141_apsi.txt
instructions: 76879626514
=(19233058377+19212411368+19223495493+19210661276)
frequencies: 1.489
=(1.496+1.475+1.487+1.499)/4
ipcs:0.39
=1*(0.39+0.40+0.39+0.39)/4

File: 099_go.txt
instructions: 108938278662
=(27265564153+27214805324+27239077132+27218832053)
frequencies: 1.485
=(1.485+1.476+1.498+1.481)/4
ipcs:0.60
=1*(0.60+0.60+0.60+0.60)/4

File: 104_hydro2d.txt
instructions: 125852538647
=(31493610714+31429191962+31458477791+31471258180)
frequencies: 1.498
=(1.500+1.497+1.498+1.497)/4
ipcs:0.30
=1*(0.30+0.30+0.30+0.30)/4

File: md5_perf_output_1614964241486057954.txt
instructions: 92318748325
=(20716800325+23197953925+24674132985+23729861090)
frequencies: 0.553
=(0.611+0.519+0.545+0.536)/4
ipcs:0.69
=1*(0.56+0.73+0.74+0.72)/4

File: 126_gcc.txt
instructions: 13355666047
=(3343428295+3336268235+3340090616+3335878901)
frequencies: 1.474
=(1.477+1.476+1.478+1.466)/4
ipcs:0.61
=1*(0.61+0.61+0.61+0.62)/4

File: aes_benchmark.txt
instructions: 30927976110
=(7735588037+7727147766+7732853372+7732386935)
frequencies: 1.478
=(1.481+1.474+1.478+1.477)/4
ipcs:1.35
=1*(1.35+1.35+1.35+1.35)/4

================================================================================
Finished running benchmarks
================================================================================