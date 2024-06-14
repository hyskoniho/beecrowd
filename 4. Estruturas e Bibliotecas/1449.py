from sys import stdin, stdout

for t in range(int(stdin.readline().strip())):
    m,n = stdin.readline().strip().split()

    jap = []
    trad = []

    for x in range(int(m)):
        jap.append(stdin.readline().strip())
        trad.append(stdin.readline().strip())
    
    musica = []

    for x in range(int(n)):
        linha = str(stdin.readline().strip())
        lista_palavras = linha.split()
        for idx, palavra in enumerate(lista_palavras):
                for org, pt in zip(jap, trad):
                    if palavra == org:
                        lista_palavras[idx] = pt
        musica.append(" ".join(lista_palavras))
        
    for linha in musica:
        stdout.write(linha+'\n')
    stdout.write("\n")