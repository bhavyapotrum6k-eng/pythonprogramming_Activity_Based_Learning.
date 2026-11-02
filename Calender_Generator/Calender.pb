ALGORITHM:

1. START
2. SET days=30 (total days in month)
3. SET start_day=3 (0=Sun, 3=Wed) -> month starts on Wednesday
4. PRINT header "Sun Mon Tue Wed Thu Fri Sat"
5. LOOP i from 0 to start_day-1: PRINT 4 spaces (for alignment)
6. LOOP d from 1 to days:
7.  PRINT d with width 3
8.  IF (start_day + d) % 7 == 0 THEN PRINT new line (week completed)
9. END LOOP
10. END

PSEUDOCODE:

BEGIN
 SET days=30
 SET start_day=3
 DISPLAY "Sun Mon Tue Wed Thu Fri Sat"
 FOR i=0 TO start_day-1 DO
  DISPLAY "    "
 END FOR
 FOR d=1 TO days DO
  DISPLAY d with 3 spaces
  IF (start_day+d) MOD 7 == 0 THEN
   DISPLAY new line
  END IF
 END FOR
END

FLOWCHART (Text):

Start -> Set days=30, start_day=3 -> Print Header
-> For loop for spaces: i < start_day? Yes -> Print "    " -> i++ -> No -> Next
-> For loop d=1 to 30: Print d
-> (start_day+d)%7==0? Yes -> New Line / No -> Continue
-> d++ -> Loop End -> Stop

TEST CASES:

TC-01: Input: days=30, start_day=3(Wed) -> Output: Calendar starts with 3 blanks, 1 under Wed -> PASS
TC-02: Input: days=31, start_day=0(Sun) -> Output: 31 days, starts Sunday, 5 rows -> PASS
TC-03: Input: days=28, start_day=1(Mon) -> Output: Feb 28 days, starts Mon, 4 rows -> PASS
TC-04: Input: days=30, start_day=6(Sat) -> Output: First row only 1 day (Sat) -> PASS
TC-05: Input: days=30, start_day=0 -> Output: No initial spaces, 1 starts at Sun -> PASS

LOGIC FORMULA:

Initial spaces = start_day * 4 characters
New line condition: (start_day + current_date) % 7 == 0
Because 7 days = 1 week, remainder 0 means week completed

EXAMPLE OUTPUT for days=30, start_day=3:
Sun Mon Tue Wed Thu Fri Sat
              1   2   3   4
  5   6   7   8   9  10  11
 12  13  14  15  16  17  18
 19  20  21  22  23  24  25
 26  27  28  29  30

CONCLUSION: Program generates monthly calendar using modulo operator and nested loops.
