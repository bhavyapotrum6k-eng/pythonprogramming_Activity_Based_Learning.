
# Case 37 - Calendar Generator
days = 30
start_day = 3 # 0=Sun, 1=Mon... 3=Wed

print("Sun Mon Tue Wed Thu Fri Sat")

# spaces for first week
for i in range(start_day):
    print("    ", end="")

for d in range(1, days+1):
    print(f"{d:3} ", end="")
    if (start_day + d) % 7 == 0:
        print() # new line
