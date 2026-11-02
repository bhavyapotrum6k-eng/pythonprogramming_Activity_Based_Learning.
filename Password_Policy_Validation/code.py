
# Case 29 - Password Validation
pwd = input("Enter password: ")

# rules
if len(pwd) < 8:
    print("Fail: Minimum 8 characters")
elif "123" in pwd or "password" in pwd.lower():
    print("Fail: Contains prohibited substring")
else:
    has_upper = False
    has_lower = False
    has_digit = False
    
    for ch in pwd:
        if ch.isupper():
            has_upper = True
        if ch.islower():
            has_lower = True
        if ch.isdigit():
            has_digit = True
    
    if not has_upper:
        print("Fail: No uppercase")
    elif not has_lower:
        print("Fail: No lowercase")
    elif not has_digit:
        print("Fail: No digit")
    else:
        print("Password Valid")
