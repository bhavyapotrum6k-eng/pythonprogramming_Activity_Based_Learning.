ALGORITHM:

1. START
2. SET marks = 3x3 nested list [ [78,85,90], [65,70,80], [90,92,95] ]
3. ROW-WISE: FOR i=0 to len(marks)-1: avg = sum(marks[i])/len(marks[i]) PRINT Student i+1 Avg
4. COLUMN-WISE: FOR j=0 to 2: total=0 FOR i=0 to len(marks)-1: total+=marks[i][j] PRINT Subject j+1 Avg = total/len(marks)
5. TOPPER: SET max_avg=0 top=0 FOR i=0 to len(marks)-1: avg=sum(marks[i])/len(marks[i]) IF avg>max_avg THEN max_avg=avg top=i+1
6. PRINT Topper
7. END

PSEUDOCODE:

BEGIN
 SET marks=[[78,85,90],[65,70,80],[90,92,95]]
 FOR i=0 TO ROWS-1 DO
  avg=SUM(marks[i])/3
  DISPLAY Student i+1 Avg
 END FOR
 FOR j=0 TO COLS-1 DO
  total=0
  FOR i=0 TO ROWS-1 DO total=total+marks[i][j]
  DISPLAY Subject j+1 Avg=total/ROWS
 END FOR
 SET max_avg=0 top=0
 FOR i=0 TO ROWS-1 DO
  avg=SUM(marks[i])/3
  IF avg>max_avg THEN max_avg=avg top=i+1
 END FOR
 DISPLAY Topper top
END

FLOWCHART (Text):

Start -> Init 3x3 marks matrix
-> Row Loop i=0 to 2: sum row -> avg -> Print Student Avg -> i++ -> End
-> Col Loop j=0 to 2: total=0 -> Inner Loop i=0 to 2: total+=marks[i][j] -> Print Subject Avg -> j++ -> End
-> Topper Loop: max=0 top=0 -> Loop i=0 to 2: avg row -> avg>max? Yes->max=avg top=i+1 / No->Continue -> Loop End
-> Print Topper -> Stop

TEST CASES:

TC-01: Given marks [[78,85,90],[65,70,80],[90,92,95]] -> 
Student1 Avg=84.3, Student2=71.7, Student3=92.3
Subject1 Avg=(78+65+90)/3=77.7, Subject2=82.3, Subject3=88.3
Topper=Student 3 -> PASS

TC-02: marks [[100,100,100],[50,50,50],[0,0,0]] -> Student Avgs 100,50,0 Subject Avgs 50,50,50 Topper Student1 -> PASS

TC-03: marks [[80,80,80],[80,80,80],[80,80,80]] -> All Avgs 80 Topper Student1 (first max) -> PASS

OUTPUT FOR GIVEN CODE:

Student 1 Avg: 84.3
Student 2 Avg: 71.7
Student 3 Avg: 92.3
Subject 1 Avg: 77.7
Subject 2 Avg: 82.3
Subject 3 Avg: 88.3
Topper: Student 3

FORMULA:

Row Avg = sum(row) / no_of_subjects
Col Avg = sum(column) / no_of_students
Topper = max(Row Avg)

CONCLUSION: Performs matrix analysis using nested list, row-wise and column-wise traversal for student result analysis.
