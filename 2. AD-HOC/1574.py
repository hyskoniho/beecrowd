from sys import stdin, stdout

for t in range(int(stdin.readline().strip())):
    listaOrdens = []
    pos = 0

    for n in range(int(stdin.readline().strip())):
        if (string:=stdin.readline().strip()).startswith("SAME"):
            listaOrdens.append(listaOrdens[int(string.split()[2])-1])
        else:    
            listaOrdens.append(string)

    for idx, ordem in enumerate(listaOrdens):
        if ordem == "LEFT":
            pos -= 1
        elif ordem == "RIGHT":
            pos += 1

    stdout.write(f"{pos}\n")