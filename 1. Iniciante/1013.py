a, b, c = [int(x) for x in input().split()]
maiorAB = (a + b + abs(a-b)) // 2
print('{} eh o maior'.format(maiorAB if maiorAB > c else c))
