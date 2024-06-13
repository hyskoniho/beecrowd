for x in range(int(input())):
    n, m = map(int, input().split())

    def mdc(a, b):
        while b:
            a, b = b, a % b
        return a

    print(mdc(n, m))