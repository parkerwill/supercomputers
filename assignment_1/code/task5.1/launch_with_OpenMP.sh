#!/bin/bash
#@ wall_clock_limit = 00:10:00
#@ job_name = pos-lulesh-openmp
#@ job_type = MPICH
#@ class = micro
#@ initialdir = $(home)/programming-of-supercomputers/assignment_1
#@ output = data/task5.1/pos_lulesh_openmp_$(jobid).out
#@ error = data/task5.1/pos_lulesh_openmp_$(jobid).out
#@ node = 1
#@ total_tasks = 16
#@ node_usage = not_shared
#@ energy_policy_tag = lulesh
#@ minimize_time_to_solution = yes
#@ island_count = 1
#@ queue

module unload mpi.ibm
module load mpi.intel
module load intel/16.0
module list

. /etc/profile
. /etc/profile.d/modules.sh

export OMP_NUM_THREADS=16
./lulesh2.0/lulesh2.0
