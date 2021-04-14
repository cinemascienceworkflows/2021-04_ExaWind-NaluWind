#!/bin/bash

#BSUB -J <pantheon_workflow_jid> 
#BSUB -P <compute_allocation> 
#BSUB -W 0:03
#BSUB -nnodes 1

# submit the job
jsrun --np 4 --nrs 1 --cpu_per_rs 4 --latency_priority cpu-cpu <pantheon_run_dir>/naluX -i <pantheon_run_dir>/<nalu_reg_test>.yaml -o <pantheon_run_dir>/<nalu_reg_test>.log
