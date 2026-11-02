ALGORITHM:

1. START
2. Input n (rows)
3. Input choice ch
4. IF ch=1: Loop i=1 to n: Loop j=1 to i: Print j
5. IF ch=2: Loop i=1 to n: Loop j=1 to i: Print i
6. IF ch=3: num=1 Loop i=1 to n: Loop j=1 to i: Print num num++ 
7. IF ch=4: Loop i=n down to 1: Loop j=i down to 1: Print j
8. END

PSEUDOCODE:

BEGIN
 INPUT n, ch
 IF ch=="1" THEN FOR i=1 TO n FOR j=1 TO i PRINT j
 IF ch=="2" THEN FOR i=1 TO n FOR j=1 TO i PRINT i
 IF ch=="3" THEN num=1 FOR i=1 TO n FOR j=1 TO i PRINT num num++
 IF ch=="4" THEN FOR i=n DOWN TO 1 FOR j=i DOWN TO 1 PRINT j
END

FLOWCHART (Text):

Start -> Input n, choice -> choice?
1 -> i=1 to n -> j=1 to i print j -> next i -> Stop
2 -> i=1 to n -> j=1 to i print i -> next i -> Stop
3 -> num=1 -> i=1 to n -> j=1 to i print num++ -> next i -> Stop
4 -> i=n to 1 -> j=i to 1 print j -> next i -> Stop

TEST CASES:

TC-01: n=4, ch=1 -> Output:
1
12
123
1234 -> PASS

TC-02: n=4, ch=2 -> Output:
1
22
333
4444 -> PASS

TC-03: n=4, ch=3 -> Output:
1
2 3
4 5 6
7 8 9 10 -> PASS

TC-04: n=5, ch=4 -> Output:
54321
4321
321
21
1 -> PASS

CONCLUSION: Generates multiple numeric patterns using nested for loops.
