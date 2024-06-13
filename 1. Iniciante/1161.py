def fat(x):
    for i in range(1, x):
        x*=i

    return x+1 if x == 0 else x

while(True):
    try:
        n, m = map(int, input().split())
        print(int(fat(n) + fat(m)))
    except EOFError:
        break
