ALGORITHM:

1. START
2. SET key=["A","B","C","D","A"] correct answers
3. SET student=["A","B","","D","C"] student answers (""=blank)
4. SET correct=0, wrong=0, blank=0
5. LOOP i=0 to len(key)-1:
   IF student[i]=="" THEN blank++
   ELSE IF student[i]==key[i] THEN correct++
   ELSE wrong++
6. marks = correct*4 + wrong*(-1)
7. PRINT correct, wrong, blank, marks
8. END

PSEUDOCODE:

BEGIN
 SET key=[A,B,C,D,A]
 SET student=[A,B,"",D,C]
 SET correct=0 wrong=0 blank=0
 FOR i=0 TO LENGTH(key)-1 DO
  IF student[i]=="" THEN blank=blank+1
  ELSE IF student[i]==key[i] THEN correct=correct+1
  ELSE wrong=wrong+1
 END FOR
 SET marks=correct*4 + wrong*(-1)
 DISPLAY correct, wrong, blank, marks
END

FLOWCHART (Text):

Start -> Init key, student, counters 0
-> Loop i=0 to 4: student[i] blank? Yes->blank++ / No-> student[i]==key[i]? Yes->correct++ / No->wrong++ -> i++ -> Loop End
-> Calculate marks = correct*4 - wrong -> Print Report -> Stop

TEST CASES:

TC-01: key=[A,B,C,D,A] student=[A,B,"",D,C] -> Correct 3 (0,1,3) Wrong 1 (4) Blank 1 (2) Marks=3*4-1=11 -> PASS
TC-02: key=[A,B,C,D,A] student=[A,B,C,D,A] -> Correct 5 Wrong 0 Blank 0 Marks=20 -> PASS
TC-03: key=[A,B,C,D,A] student=["","","","",""] -> Correct 0 Wrong 0 Blank 5 Marks=0 -> PASS
TC-04: key=[A,B,C,D,A] student=[B,B,B,B,B] -> Correct 1 Wrong 4 Blank 0 Marks=0 (4-4) -> PASS
TC-05: key=[A,B,C,D,A] student=[A,B,C,D,B] -> Correct 4 Wrong 1 Blank 0 Marks=15 -> PASS

FORMULA:

Marks = (Correct * 4) + (Wrong * -1)
Percentage = Correct / Total * 100
Blank marks = 0

CONCLUSION: Evaluates exam answers with negative marking scheme using list comparison.
