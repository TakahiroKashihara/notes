#!/bin/sh
#SBATCH --ntasks=5
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=5
#SBATCH --ntasks-per-socket=5

#SBATCH -J positive_M=1.5_U=0.058
#SBATCH --mail-type=END
#SBATCH --mail-user=kashihara.takahiro.72c@st.kyoto-u.ac.jp

orig_dir=/home/t-kashihara/Data/QWZ/09_01_qmphs/M=1.5/U=0.058
root_dir=/work/t-kashihara/09_01_qmphs/M=1.5/U=0.058

mkdir -p ${root_dir}

cp ${orig_dir}/qmwiseUg.jl ${orig_dir}/retestserver.jl ${root_dir}/
cd ${root_dir}


julia qmwiseUg.jl 1.5 0.058
mv ${root_dir}/* ${orig_dir}/




