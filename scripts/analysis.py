
import pandas as pd

# Load dataset
df = pd.read_csv("../data/fake_students.csv")

# Print basic stats
print("Number of students:", len(df))
print("Average grade:", df['Grade'].mean())

# Filter Toronto students
toronto_students = df[df['City'] == 'Toronto']
print("\nStudents from Toronto:")
print(toronto_students.head())
