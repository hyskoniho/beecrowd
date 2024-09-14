A, B, C = map(int, input().split())

try:
    while True:
        if A == B == C:
            print("*")
        else:
    
            qtd_1 = len([x for x in [A, B, C] if x == 1])
            qtd_0 = len([x for x in [A, B, C] if x == 0])
    
            if [A, B, C].index(0 if qtd_0 < qtd_1 else 1) == 0:
                print("A")
            elif [A, B, C].index(0 if qtd_0 < qtd_1 else 1) == 1:
                print("B")
            else:
                print("C")
    
        A, B, C = map(int, input().split())

except EOFError:
    pass