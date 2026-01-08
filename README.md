# HPC Onboarding
Steps
1. Clone the repository
```bash
git clone https://github.com/<your-org>/hpc-workshop.git
cd hpc-workshop>
```
2. Explore the dataset
```bash
cd data
head fake_students.csv      # view first 10 lines
wc -l fake_students.csv     # count lines
cd ..
```
3. Run the analysis script
```bash
cd scripts
chmod +x analysis.sh
./analysis.sh
```
4. Try these commands
```bash
grep "Toronto" data/fake_students.csv | head
sort -t, -k4,4nr data/fake_students.csv | head
awk -F, '{print $2,$4}' data/fake_students.csv | head
```
