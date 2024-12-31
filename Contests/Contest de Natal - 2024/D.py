m: int = int(input())
q: int = int(input())

p: dict = {}
tm: int = 0
tq: int = 0

for i in range(q):
    l, n = input().split()
    p[l] = int(n)

p = dict(sorted(p.items(), key=lambda x: x[1]))

u: int = 0
j: int = 0
while tm < m and j < len(p):
    k: str = list(p.keys())[j]
    
    if (tm-u+p[k] <= m) and (tm+p[k] > m):
        tm = tm-u+p[k]
    
    elif (tm + p[k]) <= m:
        tm += p[k]
        tq += 1
    
    u = p[k]
    j+=1

print(tq)
print(tm)