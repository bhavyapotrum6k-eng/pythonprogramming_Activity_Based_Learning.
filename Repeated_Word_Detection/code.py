
para = input("Enter a sentence: ").lower()
words = para.split()

# count using list
checked = []
for w in words:
    if w not in checked:
        c = words.count(w)
        if c > 1:
            print(f"{w} repeated {c} times")
        checked.append(w)
