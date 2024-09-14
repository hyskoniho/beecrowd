from sys import stdout
M, N = map(int, sorted(input().split()))

while M > 0:
    soma = 0
    for i in range(M,N+1):
        soma+= i
        stdout.write(f'{i} ')
    print(f"Sum={soma}")
    M, N = map(int, sorted(input().split()))