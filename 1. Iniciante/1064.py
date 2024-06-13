lis = []
for x in range(6):
    num = float(input())
    if num > 0:
        lis.append(num)
print(f"{len(lis)} valores positivos\n{sum(lis)/len(lis):.1f}")