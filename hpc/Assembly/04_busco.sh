!/bin/bash
#Set the name of the job
#PBS -N PdPf_95_good_buscoM

#Allocate required amount of wall time
#PBS -l walltime=1000:00:00
#Set the number of nodes and processors
#PBS -l nodes=1:ppn=20
#Allocate required amount of memory
#PBS -l pmem=2gb
source /etc/profile.d/modules.sh/
module load hmmer
module load blast
module load python/3.6.1


cd /homes/27/jc275567/Porites_competition/hpc/Assembly/transrate_PdPf_transfuse95_cons

python3 /homes/27/jc275567/Software/busco/BUSCO.py -m tran --cpu 16 -l /homes/27/jc275567/Databases/metazoa_odb9 \
-o PdPf_95_good_busco -i good.PdPf_transfuse95_cons.fa
