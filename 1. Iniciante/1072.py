lis1 = []
lis2 = []
for x in range(int(input())):
    a = int(input())
    if 10 <= a <= 20:
        lis1.append(a)
    else:
        lis2.append(a)

print(f'{len(lis1)} in\n{len(lis2)} out')