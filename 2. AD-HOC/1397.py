import sys

while (n := int(sys.stdin.readline().strip())) != 0:
    ca = 0
    cb = 0

    for i in range(n):
        l = sys.stdin.readline().strip()

        a, b = [int(x) for x in l.split()]

        if a>b:
            ca+=1
        elif b>a:
            cb+=1

    sys.stdout.write(f"{ca} {cb}\n")