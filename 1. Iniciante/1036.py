a, b, c = [float(x) for x in input().split()]

delta = (b**2) - 4*a*c
if delta > 0 and a != 0:
    r1 = (-b + (delta**0.5)) / (2 * a)
    r2 = (-b - (delta**0.5)) / (2 * a)
    print(f"R1 = {r1:.5f}\nR2 = {r2:.5f}")
else:
    print("Impossivel calcular")