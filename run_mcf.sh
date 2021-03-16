#!/bin/bash

### test automation script
### Intensivate Inc.
### Slavko Markovic
### slavkomarkovic [at] intensivate [dot] com
### April 18th, 2019

### edited by apaj on May 1st, 2019

WORD2VEC="/root/i-benchmarks/word2vec/bin"
GENSIM="/root/i-benchmarks/gensim/bin"
MPI="/root/i-benchmarks/MPI/bin"
TENSORFLOW="/root/i-benchmarks/tensorflow/bin"
SQLITE="/root/i-benchmarks/sqlite/bin"
GOLANG="/root/i-benchmarks/golang/bin"
SCIKIT="/root/i-benchmarks/scikit/bin"
SPEC="/root/i-benchmarks/spec/bin"
SPEC95="/root/i-benchmarks/spec_95/bin"
AES="/root/i-benchmarks/aes/bin"
COREMARK="/root/i-benchmarks/coremark/bin"
LIBQUANTUM="/root/i-benchmarks/libquantum/bin"
ARM_CORE_BENCHMARKS="/root/i-benchmarks/arm_core_benchmarks/bin"
MULTICHASE="/root/i-benchmarks/multichase/bin"
AUX_SCIPTS="/root/i-benchmarks/aux_scripts"
RESULTS="/root/i-benchmarks/test_results"



usage() {
  cat << EOF >&2
Usage: $0 [-t <number of threads>]

-t <number of threads>: number of threads to be configured for benchmark applications
-h: show this message
Contact Aleks Pajkanovic <alekspajkanovic@intensivate.com> or Alex Zinovyev <alexzinovyev@intensivate.com> for support.
EOF
  exit 1
}

lscpu
grep MemTotal /proc/meminfo

NUMBER_OF_THREADS=16
COMPOUND_OUTPUT="/root/i-benchmarks/compound_perf_output.txt"
while getopts t:o:h o; do
  case $o in
    (t) NUMBER_OF_THREADS=$OPTARG;;
    (h) usage;;
    (*) usage
  esac
done
shift "$((OPTIND - 1))"

s=$(printf "%-80s" "=")
mkdir -p ${RESULTS}
rm -f ${RESULTS}/*

echo "${s// /=}"
cd ${SPEC}
rm -f *.log
./spec.sh -n ${NUMBER_OF_THREADS}
cp *.log ${RESULTS}

echo "${s// /=}"
echo "${s// /=}"

echo "Printing results"
cd ${RESULTS}
rename "s/log/txt/" *.log
python3 ${AUX_SCIPTS}/parse_perf_output_for_n_cores.py -t 1 -n ${NUMBER_OF_THREADS} -f ./ -e .txt
echo "${s// /=}"
echo "Finished running benchmarks"
echo "${s// /=}"
