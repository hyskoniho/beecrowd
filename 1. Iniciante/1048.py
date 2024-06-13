sal = float(input())
if sal <= 400:
    per = 15
elif sal <=800:
    per = 12
elif sal <= 1200:
    per = 10
elif sal <= 2000:
    per = 7
else:
    per = 4

print(f"Novo salario: {sal+(sal*per/100):.2f}")
print(f"Reajuste ganho: {sal*per/100:.2f}")
print(f"Em percentual: {per} %")