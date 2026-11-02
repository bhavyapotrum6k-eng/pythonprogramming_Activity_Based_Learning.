# Case 12 - Attendance Recovery Computation

attended = int(input("Enter attended classes: "))
total = int(input("Enter total classes: "))
target = 75  # eligibility %

current_percent = (attended / total) * 100
print(f"\nCurrent Attendance: {current_percent:.2f}%")

if current_percent >= target:
    print("You are ELIGIBLE")
    # how many classes you can bunk
    can_bunk = 0
    a = attended
    t = total
    while True:
        # if you bunk 1 class, total increases but attended same
        if ((a / (t+1)) * 100) < target:
            break
        t += 1
        can_bunk += 1
    print(f"You can bunk {can_bunk} classes")
else:
    print("You are NOT Eligible")
    # how many consecutive classes needed to reach 75%
    need = 0
    a = attended
    t = total
    while (a / t * 100) < target:
        a += 1
        t += 1
        need += 1
    print(f"You need {need} more consecutive classes to reach 75%")
