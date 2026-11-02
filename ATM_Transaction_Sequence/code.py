
# Case 13 - ATM Simulation
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
