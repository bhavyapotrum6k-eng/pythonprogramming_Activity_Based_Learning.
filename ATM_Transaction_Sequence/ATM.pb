
CASE 13 - ATM SIMULATION


SOURCE CODE:

balance = 5000
transactions = []  # list

n = int(input("How many transactions: "))
for i in range(n):
    t = input("Enter D 1000 or W 500: ")
    parts = t.split() # string operation
    typ = parts[0]
    amt = int(parts[1])
    
    if typ == 'D':
        balance += amt
        transactions.append((typ, amt, "Success")) # tuple
    elif typ == 'W':
        if amt <= balance and amt <= 10000: # limit
            balance -= amt
            transactions.append((typ, amt, "Success"))
        else:
            transactions.append((typ, amt, "Failed"))
            
print(f"Final Balance: {balance}")
for x,y,z in transactions: # tuple unpacking
    print(x,y,z)

ALGORITHM:

1. START
2. balance=5000, transactions=[] (empty list)
3. Input n = number of transactions
4. LOOP i from 0 to n-1
5. Input string t like "D 1000" or "W 500"
6. Split t -> typ=parts[0], amt=parts[1] (string operation)
7. If typ=='D': balance=balance+amt, append (typ,amt,Success) tuple to list
8. If typ=='W': If amt<=balance AND amt<=10000: balance=balance-amt append Success Else append Failed
9. End Loop
10. Print Final Balance
11. For each tuple (x,y,z) in transactions: Print x,y,z (tuple unpacking)
12. END

PSEUDOCODE:

BEGIN
 SET balance=5000
 SET transactions=[]
 INPUT n
 FOR i=0 TO n-1 DO
  INPUT t
  parts = SPLIT(t, " ")
  typ = parts[0]
  amt = INT(parts[1])
  IF typ=="D" THEN balance=balance+amt ADD (typ,amt,Success) TO transactions
  ELSE IF typ=="W" THEN IF amt<=balance AND amt<=10000 THEN balance=balance-amt ADD Success ELSE ADD Failed
 END FOR
 DISPLAY balance
 FOR EACH (x,y,z) IN transactions DO DISPLAY x,y,z
END

FLOWCHART (Text):

Start -> balance=5000, list=[] -> Input n
-> Loop i=0 to n-1 -> Input "D/W amount"
-> Split string -> Get typ and amt
-> typ=D? Yes -> balance+=amt -> Append (D,amt,Success) -> Next Loop
-> typ=W? Yes -> amt<=balance and amt<=10000? Yes->balance-=amt Append Success / No->Append Failed -> Next Loop
-> Loop End -> Print Final Balance -> For each tuple unpack and print -> Stop

TEST CASES:

TC-01: Input: n=1, "D 1000" -> Output: Final Balance 6000, D 1000 Success -> PASS
TC-02: Input: n=1, "W 2000" -> Output: Final Balance 3000, W 2000 Success -> PASS
TC-03: Input: n=1, "W 6000" -> Output: Final Balance 5000, W 6000 Failed (Insufficient) -> PASS
TC-04: Input: n=1, "W 15000" -> Output: Final Balance 5000, W 15000 Failed (Limit 10000) -> PASS
TC-05: Input: n=3, "D 500, W 200, W 10000" -> Output: Final 5300, 2 Success 1 Failed -> PASS
TC-06: Input: n=2, "D 2000, W 1000" -> Output: Tuple unpacking prints correctly -> PASS

CONCEPTS USED:

1. List: transactions = []
2. Tuple: (typ, amt, "Success")
3. String Operation: t.split()
4. Tuple Unpacking: for x,y,z in transactions
5. Limit Check: amt <= 10000

CONCLUSION: Program demonstrates list, tuple, string split and conditions for ATM simulation.
