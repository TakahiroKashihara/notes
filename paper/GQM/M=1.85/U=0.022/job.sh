#!/bin/sh
#SBATCH --ntasks=10
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=10
#SBATCH --ntasks-per-socket=10

#SBATCH -J positive_M=1.85_U=0.022
#SBATCH --mail-type=END
#SBATCH --mail-user=kashihara.takahiro.72c@st.kyoto-u.ac.jp

orig_dir=/home/t-kashihara/Data/QWZ/07_28_qmtest/M=1.85/U=0.022
root_dir=/work/t-kashihara/07_28_qmtest/M=1.85/U=0.022

mkdir -p ${root_dir}

cp ${orig_dir}/qmwiseUg.jl ${orig_dir}/retestserver.jl ${root_dir}/
cd ${root_dir}


julia qmwiseUg.jl 1.85 0.022
mv ${root_dir}/* ${orig_dir}/




