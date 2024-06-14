from sys import stdin, stdout
while (phrasis := stdin.readline().strip()) != "*":
    words = phrasis.split()
    first_letter = words[0][0].lower()
    for word in words:
        if word[0].lower() != first_letter:
            stdout.write("N\n")
            break
    else:
        stdout.write("Y\n")