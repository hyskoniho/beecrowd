from sys import stdin, stdout

def caminhada(pos: int, lista: list, idx: int) -> int:
    if lista[idx-1] == "LEFT":
        pos -= 1
    elif lista[idx-1] == "RIGHT":
        pos += 1
    else:
        pos = caminhada(pos, lista, int(lista[idx-1].split()[2]))
    return pos

for t in range(int(stdin.readline().strip())):
    listaOrdens = []
    pos = 0

    for n in range(int(stdin.readline().strip())):
        string = stdin.readline().strip()
        listaOrdens.append(string)

    for idx, ordem in enumerate(listaOrdens):
        if ordem == "LEFT":
            pos -= 1
        elif ordem == "RIGHT":
            pos += 1
        else:
            pos = caminhada(pos, listaOrdens, int(ordem.split()[2]))
    
    stdout.write(f"{pos}\n")