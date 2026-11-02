# Case 42 - Marks Matrix Analysis
# nested list
marks = [
    [78, 85, 90], # Student 1 - 3 subjects
    [65, 70, 80],
    [90, 92, 95]
]

# row-wise - student average
for i in range(len(marks)):
    avg = sum(marks[i]) / len(marks[i])
    print(f"Student {i+1} Avg: {avg:.1f}")

# column-wise - subject average
for j in range(3):
    total = 0
    for i in range(len(marks)):
        total += marks[i][j]
    print(f"Subject {j+1} Avg: {total/len(marks):.1f}")

# top performer
max_avg = 0
top = 0
for i in range(len(marks)):
    avg = sum(marks[i]) / len(marks[i])
    if avg > max_avg:
        max_avg = avg
        top = i+1
print(f"Topper: Student {top}")
