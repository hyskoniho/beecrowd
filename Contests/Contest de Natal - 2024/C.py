q: int = int(input())
t: int = 0

for i in range(1, q+1, 1):
    m, v = input().split()
    
    if i == 2:
        t += 28*int(v)
    elif i in [1, 3, 5, 7, 8, 10, 12]:
        t += 31*int(v)
    else:
        t += 30*int(v)
    
print(t)