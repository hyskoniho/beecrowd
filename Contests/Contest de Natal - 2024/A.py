qtd: int = int(input())

i: int = 0
l: str = ''
p: list = []

for i in range(qtd):
    r: str = input()
    
    if not l:
        l = r
        
    elif len(r) > len(l)+2:
        f: str = "*"*(len(l)+2)
        p.append(f)
        
    l = r

t: int = 0
for j in p:
    print(j)
    t += len(j)
    
print(t)   