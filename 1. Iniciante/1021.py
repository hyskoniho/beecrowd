def main():
    value = float(input())
    currency = [100, 50, 20, 10, 5, 2, 1, 0.5, 0.25, 0.1, 0.05, 0.01]
    currency_count = [0] * len(currency)

    for i, unit in enumerate(currency):
        while round(value, 2) >= unit:
            value -= unit
            currency_count[i] += 1

    print("NOTAS:")
    for i in range(6):
        print(f"{currency_count[i]} nota(s) de R$ {currency[i]:.2f}")

    print("MOEDAS:")
    for i in range(6, len(currency)):
        print(f"{currency_count[i]} moeda(s) de R$ {currency[i]:.2f}")

if __name__ == "__main__":
    main()
