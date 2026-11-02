ALGORITHM:

1. START
2. Input pwd
3. IF len(pwd) < 8: Print Fail Min 8 chars, END
4. IF "123" in pwd OR "password" in lower(pwd): Print Fail Prohibited, END
5. SET has_upper=False, has_lower=False, has_digit=False
6. LOOP for each ch in pwd:
   IF ch.isupper(): has_upper=True
   IF ch.islower(): has_lower=True
   IF ch.isdigit(): has_digit=True
7. IF has_upper==False: Print Fail No uppercase
8. ELSE IF has_lower==False: Print Fail No lowercase
9. ELSE IF has_digit==False: Print Fail No digit
10. ELSE Print Password Valid
11. END

PSEUDOCODE:

BEGIN
 INPUT pwd
 IF LENGTH(pwd) < 8 THEN DISPLAY Fail Min 8 chars RETURN
 IF "123" in pwd OR "password" in LOWER(pwd) THEN DISPLAY Fail Prohibited RETURN
 SET has_upper=False has_lower=False has_digit=False
 FOR EACH ch IN pwd DO
  IF ISUPPER(ch) THEN has_upper=True
  IF ISLOWER(ch) THEN has_lower=True
  IF ISDIGIT(ch) THEN has_digit=True
 END FOR
 IF has_upper==False THEN DISPLAY Fail No uppercase
 ELSE IF has_lower==False THEN DISPLAY Fail No lowercase
 ELSE IF has_digit==False THEN DISPLAY Fail No digit
 ELSE DISPLAY Password Valid
END

FLOWCHART (Text):

Start -> Input pwd -> len<8? Yes->Fail Min 8 -> Stop
-> No -> "123" or "password" in pwd? Yes->Fail Prohibited -> Stop
-> No -> Set flags False -> Loop each char: check upper/lower/digit set flags
-> Loop End -> has_upper? No->Fail No Upper -> Stop
-> Yes -> has_lower? No->Fail No Lower -> Stop
-> Yes -> has_digit? No->Fail No Digit -> Stop
-> Yes -> Valid -> Stop

TEST CASES:

TC-01: Input: "abc" -> Output: Fail Minimum 8 characters -> PASS
TC-02: Input: "password123" -> Output: Fail Contains prohibited substring (password & 123) -> PASS
TC-03: Input: "hello12345" -> Output: Fail Contains prohibited substring (123) -> PASS
TC-04: Input: "ABCDEFGH" -> Output: Fail No lowercase -> PASS
TC-05: Input: "abcdefgh" -> Output: Fail No uppercase, No digit -> PASS (first Fail: No uppercase)
TC-06: Input: "Abcdefgh" -> Output: Fail No digit -> PASS
TC-07: Input: "Abcdef12" -> Output: Fail Contains 123? No, has Upper Lower Digit -> Password Valid -> PASS
TC-08: Input: "MyPass1234" -> Output: Fail Contains prohibited (123) -> PASS (Shows strong check)
TC-09: Input: "MySecure99" -> Output: Password Valid -> PASS
TC-10: Input: "HelloWorld1" -> Output: Password Valid -> PASS

VALIDATION RULES:

1. Minimum Length: 8
2. No prohibited substring: "123" and "password"
3. Must have at least 1 uppercase
4. Must have at least 1 lowercase
5. Must have at least 1 digit

CONCLUSION: Program validates password strength using string functions, flags and prohibited substring check.
