ALGORITHM:

1. START
2. Input n
3. SET transactions=[] list, seen=set(), duplicates=[] list
4. LOOP i=0 to n-1: Input t, append to transactions
   IF t in seen: IF t not in duplicates: Append to duplicates
   ELSE: Add t to seen, unique_count++
5. Print all transactions
6. Print seen set
7. IF duplicates not empty: For each d in duplicates count occurrences using count()
8. ELSE Print No repeated
9. END

PSEUDOCODE:

BEGIN
 INPUT n
 SET transactions=[], seen={}, duplicates=[]
 FOR i=0 TO n-1 DO
  INPUT t
  APPEND t TO transactions
  IF t IN seen THEN
   IF t NOT IN duplicates THEN APPEND t TO duplicates
  ELSE
   ADD t TO seen
 END FOR
 DISPLAY transactions, seen, duplicates
 IF duplicates EMPTY THEN DISPLAY No repeated ELSE DISPLAY each duplicate with COUNT
END

FLOWCHART (Text):

Start -> Input n -> Init list, set, dup list
-> Loop i<n: Input t -> Append to list
-> t in seen? Yes -> t in dup? No -> Add to dup -> Loop
         -> Yes in dup -> Loop
         -> No in seen -> Add to seen -> Loop
-> Loop End -> Print All, Unique
-> duplicates empty? Yes->No repeated -> Stop / No->Print duplicates with count -> Stop

TEST CASES:

TC-01: Input: 5 [D 1000, W 500, D 1000, W 200, D 1000] -> Output: Repeated: D 1000 3 times -> PASS
TC-02: Input: 3 [ID101, ID102, ID103] -> Output: No repeated -> PASS
TC-03: Input: 4 [ID101, ID101, ID102, ID101] -> Output: Repeated ID101 3 times, Unique 2 -> PASS
TC-04: Input: 6 [D 500, D 500, W 500, W 500, D 500, W 1000] -> Output: D 500 repeated 3, W 500 repeated 2 -> PASS
TC-05: Input: 1 [D 100] -> Output: No repeated, Unique 1 -> PASS

METHODS USED:

1. List: transactions.append(t) and transactions.count(d)
2. Set: seen.add(t) for fast lookup O(1) - set stores only unique
3. List for duplicates to maintain order
4. String comparison: t in seen

OPTIMIZED ONE-LINE METHOD (for Viva):

from collections import Counter
c = Counter(transactions)
duplicates = [k for k,v in c.items() if v>1]

CONCLUSION: Detects repeated transactions using set for uniqueness and list.count() for frequency. Prevents fraud / double payment.
