ALGORITHM:

1. START
2. Input para sentence, convert to lower() case immediately
3. words = para.split() by space
4. SET checked=[] empty list
5. FOR each w in words:
6.  IF w not in checked:
7.   c = words.count(w) -> count frequency
8.   IF c > 1: PRINT w repeated c times
9.   Append w to checked
10. END FOR
11. END

PSEUDOCODE:

BEGIN
 INPUT para
 SET para = LOWER(para)
 SET words = SPLIT(para, " ")
 SET checked = []
 FOR EACH w IN words DO
  IF w NOT IN checked THEN
   SET c = COUNT(words, w)
   IF c > 1 THEN DISPLAY w + " repeated " + c + " times"
   APPEND w TO checked
  END IF
 END FOR
END

FLOWCHART:


Text Flowchart (for record):

Start -> Input para.lower() -> words = para.split() -> checked=[] 
-> Loop For w in words: w not in checked? 
No -> Skip -> Next word
Yes -> c = words.count(w) -> c>1? Yes -> Print w repeated c times / No -> No Print 
-> Append w to checked -> Next word -> Loop End -> Stop

Mermaid Code for GitHub:

```mermaid
flowchart TD
    A([Start]) --> B[Input para - lower]
    B --> C[words = para.split]
    C --> D[checked = empty list]
    D --> E{For each w in words}
    E -- Loop End --> H([Stop])
    E -- w --> F{w not in checked?}
    F -- No --> E
    F -- Yes --> G[c = words.count w]
    G --> I{c > 1?}
    I -- Yes --> J[Print w repeated c times]
    I -- No --> K[No Print]
    J --> L[Append w to checked]
    K --> L
    L --> E
