q: int = int(input())
abc: str = 'abcdefghijklmnopqrstuvwxyz'.upper()

l = sorted(map(str, input().split()))
    
t: int = 0
for c in l:
    if c not in abc[abc.index(l[0]):abc.index(l[0])+q+1]:
        t += 1

print(t)