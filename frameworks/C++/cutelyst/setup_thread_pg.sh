#!/bin/bash

DRIVER=QPSQL
UWSGI=
NGINX=
PROCESS_OR_THREAD=-t
CPU_AFFINITY='--cpu-affinity=1'

source ${TROOT}/config.sh
