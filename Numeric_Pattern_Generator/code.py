n = int(input("Enter rows: "))
print("\n1. Number Pyramid 2. Repeated Row 3. Floyd Triangle 4. Reverse Count")

ch = input("Choice (1-4): ")

if ch == '1':
    # Pattern 1: 1 12 123 1234
    for i in range(1, n+1):
        for j in range(1, i+1):
            print(j, end="")
        print()

elif ch == '2':
    # Pattern 2: 1 22 333 4444
    for i in range(1, n+1):
        for j in range(1, i+1):
            print(i, end="")
        print()

elif ch == '3':
    # Pattern 3: Floyd's Triangle
    num = 1
    for i in range(1, n+1):
        for j in range(1, i+1):
            print(num, end=" ")
            num += 1
        print()

elif ch == '4':
    # Pattern 4: 54321, 4321, 321...
    for i in range(n, 0, -1):
        for j in range(i, 0, -1):
            print(j, end="")
        print()
else:
    print("Invalid")
