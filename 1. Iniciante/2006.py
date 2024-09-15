cha = int(input())
A,B,C,D,E = map(int, input().split())
qtd = 0
for _ in [A,B,C,D,E]:
    if _ == cha:
        qtd+=1

print(qtd)