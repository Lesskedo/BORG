# -*- coding: utf-8 -*-
import random

zufallswoerter = ["Oh, wirklich", "Interessant...", "Das kann man so sehen"]
reaktionsantworten = {"hallo": "aber hallo",
                      "geht": "Was verstehst du darunter?",
                      "essen": "Ich habe leider keinen Geschmacksinn"}

print("Willkommen beim Chatbot")
print("Worüber würden Sie gerne sprechen?")
print("Zum Beenden einfach 'bye' eintippen.")
print("")

nutzereingabe = ""

while nutzereingabe != "bye":
    nutzereingabe = ""

    while nutzereingabe == "":
        nutzereingabe = input("Ihre Frage: ")

    nutzereingabe = nutzereingabe.lower()
    nutzerwoerter = nutzereingabe.split()

    intelligenteAntworten = False

    for einzelwoerter in nutzerwoerter:
        if einzelwoerter in reaktionsantworten:
            print(reaktionsantworten[einzelwoerter])
            intelligenteAntworten = True

    if not intelligenteAntworten:
        print(random.choice(zufallswoerter))

    print("")

print("Ich wünsche einen schönen Tag. Bis zum nächsten Mal.")
