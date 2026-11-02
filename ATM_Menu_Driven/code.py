
# Case 38 - ATM Menu
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
