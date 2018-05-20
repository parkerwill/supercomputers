#!/bin/bash
#@ wall_clock_limit = 00:30:00
#@ job_name = pos-lulesh-openmp
#@ job_type = MPICH
#@ notification = always
#@ notify_user = parkerwill625@gmail.com
#@ class = test
#@ initialdir = $(home)/programming-of-supercomputers/assignment_1
#@ output = data/task4.2.1/pos_lulesh_seq_$(jobid).out
#@ error = data/task4.2.1/pos_lulesh_seq_$(jobid).out
#@ node = 1
#@ total_tasks = 16
#@ node_usage = not_shared
#@ energy_policy_tag = lulesh
#@ island_count = 1
#@ minimize_time_to_solution = yes 
#@ queue
. /etc/profile
. /etc/profile.d/modules.sh
export OMP_NUM_THREADS=16
module unload mpi.ibm
module load mpi.intel
module list
module load gcc/5
./bin/gcc/lulesh2.0_0_0
./bin/gcc/lulesh2.0_1_0
./bin/gcc/lulesh2.0_1_2
./bin/gcc/lulesh2.0_2_1
./bin/gcc/lulesh2.0_1_1
./bin/gcc/lulesh2.0_1_3
./bin/gcc/lulesh2.0_1_4
./bin/gcc/lulesh2.0_1_5
./bin/gcc/lulesh2.0_1_6
./bin/gcc/lulesh2.0_2_0
./bin/gcc/lulesh2.0_2_2
./bin/gcc/lulesh2.0_2_3
./bin/gcc/lulesh2.0_2_4
./bin/gcc/lulesh2.0_2_5
./bin/gcc/lulesh2.0_2_6
./bin/gcc/lulesh2.0_2_7
./bin/gcc/lulesh2.0_2_8
./bin/gcc/lulesh2.0_2_9
./bin/gcc/lulesh2.0_2_10
./bin/gcc/lulesh2.0_2_11
./bin/gcc/lulesh2.0_2_12
./bin/gcc/lulesh2.0_2_13
./bin/gcc/lulesh2.0_2_14
./bin/gcc/lulesh2.0_2_15
./bin/gcc/lulesh2.0_2_16
./bin/gcc/lulesh2.0_2_17
./bin/gcc/lulesh2.0_2_18
./bin/gcc/lulesh2.0_2_19
./bin/gcc/lulesh2.0_2_20
./bin/gcc/lulesh2.0_3_0
./bin/gcc/lulesh2.0_3_1
./bin/gcc/lulesh2.0_3_2
