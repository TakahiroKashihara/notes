#!/bin/bash

for M in 1.4   
do
U=0.022
dir=09_20_qmtest

N=10

#file=TMD_nonlinear_1014
file1=qmwiseUg.jl
file2=retestserver.jl
file3=qmwiseU.sh
file_dir=numerical

mkdir -p /home/t-kashihara/Data/QWZ/${dir}/M=${M}/U=${U}/
cp ./${file1} ./${file2} ./${file3} /home/t-kashihara/Data/QWZ/${dir}/M=${M}/U=${U}/

cd /home/t-kashihara/Data/QWZ/${dir}/M=${M}/U=${U}/

#rm ./metric.dat
#rm ./metric_int.dat
#rm ./metric_hs.dat

# make job.sh
cat >job.sh <<EOF
#!/bin/sh
#SBATCH --ntasks=${N}
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=${N}
#SBATCH --ntasks-per-socket=${N}

#SBATCH -J positive_M=${M}_U=${U}
#SBATCH --mail-type=END
#SBATCH --mail-user=kashihara.takahiro.72c@st.kyoto-u.ac.jp

orig_dir=/home/t-kashihara/Data/QWZ/${dir}/M=${M}/U=${U}
root_dir=/work/t-kashihara/${dir}/M=${M}/U=${U}

mkdir -p \${root_dir}

cp \${orig_dir}/${file1} \${orig_dir}/${file2} \${root_dir}/
cd \${root_dir}


julia ${file1} ${M} ${U}
mv \${root_dir}/* \${orig_dir}/




EOF
sbatch -p ptubaf job.sh
#sbatch -p pphuket job.sh
echo "job is playing"

cd /home/t-kashihara/${file_dir}/

done

