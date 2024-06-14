from sys import stdin, stdout

b = int(stdin.readline().strip())
g = int(stdin.readline().strip())

quantidade_necessaria = g//2
if b>=quantidade_necessaria:
    stdout.write("Amelia tem todas bolinhas!\n")
else:
    stdout.write(f"Faltam {quantidade_necessaria-b} bolinha(s)\n")
