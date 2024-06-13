def blob(a):
    dias = 0
    while a > 1:
        a/=2
        dias+=1
    return dias

for x in range(int(input())):
    print(f"{blob(int(input()))} dias")
