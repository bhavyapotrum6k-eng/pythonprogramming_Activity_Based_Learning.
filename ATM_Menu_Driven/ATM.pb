CASE 38 - ATM MENU


SOURCE CODE:

balance = 5000
while True:
    print("\n1.Deposit 2.Withdraw 3.Balance 4.Exit")
    ch = input("Choice: ")
    if ch == '1':
        amt = int(input("Amount: "))
        balance += amt
        print("Deposited")
    elif ch == '2':
        amt = int(input("Amount: "))
        if amt <= balance:
            balance -= amt
            print("Withdrawn")
        else:
            print("Insufficient Balance")
    elif ch == '3':
        print(f"Balance: {balance}")
    elif ch == '4':
        break
    else:
        print("Invalid choice")

ALGORITHM:

1. START
2. balance = 5000
3. LOOP while True
4. Display Menu
5. Input ch
6. If ch=1: Input amt, balance=balance+amt, Print Deposited
7. If ch=2: Input amt, If amt<=balance: balance=balance-amt Print Withdrawn Else Print Insufficient
8. If ch=3: Print balance
9. If ch=4: Break
10. Else: Print Invalid choice
11. END

PSEUDOCODE:

BEGIN
 SET balance=5000
 WHILE True DO
  DISPLAY Menu
  INPUT ch
  IF ch=="1" THEN balance=balance+amt DISPLAY Deposited
  ELSE IF ch=="2" THEN IF amt<=balance THEN balance=balance-amt DISPLAY Withdrawn ELSE DISPLAY Insufficient
  ELSE IF ch=="3" THEN DISPLAY balance
  ELSE IF ch=="4" THEN BREAK
  ELSE DISPLAY Invalid
 END WHILE
END

FLOWCHART (Text):

Start -> balance=5000 -> Display Menu -> Input Choice
Choice=1 -> Input amt -> balance+amt -> Deposited -> Menu
Choice=2 -> Input amt -> amt<=balance? Yes->Withdrawn No->Insufficient -> Menu
Choice=3 -> Show Balance -> Menu
Choice=4 -> Stop
Invalid -> Invalid Choice -> Menu

TEST CASES:

TC-01: Input: 1, 1000 -> Output: Deposited, Balance 6000 -> PASS
TC-02: Input: 2, 2000 -> Output: Withdrawn, Balance 3000 -> PASS
TC-03: Input: 2, 10000 -> Output: Insufficient Balance -> PASS
TC-04: Input: 3 -> Output: Shows Balance -> PASS
TC-05: Input: 5 -> Output: Invalid choice -> PASS
TC-06: Input: 4 -> Output: Exit -> PASS

CONCLUSION: Program works for all ATM operations.
