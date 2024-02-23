import random
lottozahlen_alle = []
lottozahlen_alle.extend(range(1,46))
lottozahlen_gewinner = random.sample (lottozahlen_alle,6)
lottozahlen_gewinner.sort()
print(lottozahlen_gewinner)
