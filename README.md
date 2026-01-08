# HPC Onboarding
Steps
1. Clone the repository
```bash
git clone https://github.com/Devan-Desai/hpc_onboarding
cd hpc-workshop
```
2. Explore the dataset
```bash
cd data
head studentdata.csv      # view first 10 lines
wc -l studentdata.csv     # count lines
cd ..
```
3. Run the analysis script
```bash
cd scripts
chmod +x analysis.sh
bash ./analysis.sh
```
4. Try these commands
```bash
grep "Toronto" data/studentdata.csv | head
sort -t, -k4,4nr data/studentdata.csv | head
awk -F, '{print $2,$4}' data/studentdata.csv | head
```

```bash
grep "Montreal" data/studentdata.csv | sort -t, -k 4nr | head -n 3
```

```bash
grep "Physics" data/studentdata.csv | wc -l
```

```bash
grep "Toronto" data/studentdata.csv | awk -F, '{sum+=$4} END {print sum/NR}'
```
