import random
durchgang = 0
aktiv = True
ratezahl = random.randint(0,100)

while aktiv:
    durchgang = durchgang + 1
    print(durchgang)
    benutzereingabe = int(input("Bitte Zahl einegeben: "))

    if benutzereingabe == ratezahl:
        print("Gewonnen! Die geheime Zahl ist nicht mehr geheim.")
        aktiv = False
        break
    elif benutzereingabe > ratezahl:
        print("Die geratene Zahl ist zu groß")
    else:
        print("Deine geratene Zahl ist zu klein")
    if (durchgang == 7):
        print("Schade - verloren. Probiere es nochmal")
        print("Es war die Zahl: " + str(ratezahl))
        aktiv = False

print("Ende des Spiels")
