valores = [float(x) for x in input().split()]
valores.sort(reverse=True)
a, b, c = valores
if a >= b+c:
    print("NAO FORMA TRIANGULO")
elif a**2 == b**2 + c**2:
   print("TRIANGULO RETANGULO")
elif a**2 > b**2 + c**2:
    print("TRIANGULO OBTUSANGULO")
elif a**2 < b**2 + c**2:
    print("TRIANGULO ACUTANGULO")
if a == b and b == c:
    print("TRIANGULO EQUILATERO")
elif a == b or a == c or b == c:
    print("TRIANGULO ISOSCELES")
