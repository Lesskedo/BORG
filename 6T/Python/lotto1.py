import random
lottozahlen =[]
lottozahlen.extend(range(1,46))
random.shuffle(lottozahlen)
for x in range(6):
    print(lottozahlen[x])
