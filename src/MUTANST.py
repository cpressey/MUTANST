import random

words = ['MUTANT']

for i in range(1, 30):
    print ' '.join(words)
    c = random.randint(1, 2)
    if len(words) <= 2:
        c = random.randint(1, 2)
    if c == 1:
        word = random.choice(words)
        words.insert(random.randint(0, len(words)), word)
    elif c == 2:
        p = random.randint(0, len(words)-1)
        word = words[p]
        if random.randint(0, 2) < 2:
            i = random.randint(0, len(word))
            lword = word[:i]
            rword = word[i:]
            word = lword + 'S' + rword
        elif len(word) > 0:
            i = random.randint(0, len(word)-1)
            lword = word[:i-1]
            rword = word[i:]
            word = lword + rword
        words[p] = word
    else:
        words.pop(random.randint(0, len(words)-1))
