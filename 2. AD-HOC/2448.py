from sys import stdin, stdout

linha = stdin.readline().strip()
n, m = linha.split()

linha2 = stdin.readline().strip()
casas = [int(x) for x in linha2.split()]

linha3 = stdin.readline().strip()
encomendas = [int(x) for x in linha3.split()]

indices : dict[int, int] = {}
idx = 0
soma = 0


for i, casa in enumerate(casas):
    indices[casa] = int(i)

for encomenda in encomendas:
    casa = indices[encomenda]
    soma+=abs(indices[encomenda] - idx)
    idx = casa
    
stdout.write(str(soma) + '\n')
