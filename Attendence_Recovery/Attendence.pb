ALGORITHM:

1. START
2. Input attended, total
3. Set target=75
4. current_percent = (attended/total)*100
5. Print current_percent
6. IF current_percent >= target THEN
7.  Print ELIGIBLE
8.  Set a=attended, t=total, can_bunk=0
9.  LOOP while True: IF (a/(t+1)*100) < target THEN BREAK ELSE t=t+1 can_bunk+=1
10. Print can_bunk
11. ELSE
12. Print NOT Eligible
13. Set a=attended, t=total, need=0
14. LOOP while (a/t*100) < target: a=a+1 t=t+1 need+=1
15. Print need
16. END

PSEUDOCODE:

BEGIN
 INPUT attended, total
 SET target=75
 SET current_percent=(attended/total)*100
 DISPLAY current_percent
 IF current_percent >= target THEN
  DISPLAY "ELIGIBLE"
  SET a=attended t=total can_bunk=0
  WHILE True DO
   IF (a/(t+1)*100) < target THEN BREAK
   t=t+1 can_bunk=can_bunk+1
  END WHILE
  DISPLAY can_bunk
 ELSE
  DISPLAY "NOT Eligible"
  SET a=attended t=total need=0
  WHILE (a/t*100) < target DO
   a=a+1 t=t+1 need=need+1
  END WHILE
  DISPLAY need
 END IF
END

FLOWCHART (Text):

Start -> Input attended, total -> target=75
-> Calculate current_percent=(attended/total)*100 -> Print percent
-> current_percent >=75? 
Yes -> ELIGIBLE -> Loop: check if bunk 1 class drops below 75? If No -> t+1, can_bunk+1 Continue / If Yes -> Break -> Print can_bunk -> Stop
No -> NOT Eligible -> Loop: a+1, t+1, need+1 until percent >=75 -> Print need -> Stop

TEST CASES:

TC-01: Input: attended=60, total=80 -> 75.00% -> ELIGIBLE, can_bunk 0 -> PASS
TC-02: Input: attended=80, total=100 -> 80.00% -> ELIGIBLE, can_bunk 6 -> PASS (80/106=75.47, 80/107=74.7)
TC-03: Input: attended=30, total=50 -> 60.00% -> NOT Eligible, need 30 -> PASS (60/80=75%)
TC-04: Input: attended=0, total=10 -> 0.00% -> NOT Eligible, need 30 -> PASS
TC-05: Input: attended=74, total=100 -> 74.00% -> NOT Eligible, need 4 -> PASS (78/104=75%)
TC-06: Input: attended=75, total=100 -> 75.00% -> ELIGIBLE, can_bunk 0 -> PASS

FORMULA USED:

Current % = attended/total*100
Bunk Check: (attended / (total+1)) *100 >=75
Need Check: (attended+need)/(total+need) *100 >=75

CONCLUSION: Program calculates eligibility and recovery plan for attendance management system.
