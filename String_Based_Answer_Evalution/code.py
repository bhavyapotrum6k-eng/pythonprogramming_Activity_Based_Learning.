# Case 31 - Exam Answer Evaluation
key = ["A", "B", "C", "D", "A"]
student = ["A", "B", "", "D", "C"] # "" means not answered

correct = 0
wrong = 0
blank = 0

for i in range(len(key)):
    if student[i] == "":
        blank += 1
    elif student[i] == key[i]:
        correct += 1
    else:
        wrong += 1

marks = correct * 4 + wrong * (-1) # 4 for correct, -1 negative
print(f"Correct: {correct}, Wrong: {wrong}, Blank: {blank}")
print(f"Total Marks: {marks}")
