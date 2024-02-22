-- Der SELECT Befehl mit GROUP BY

-- über GROUP BY Datensätze zu Gruppen zusammenfassen

-- z.B. alle Kunden nach ihrem Herkunftsland zusammenfassen

SELECT customerName, country FROM customers
GROUP BY country
ORDER BY country;
-- dieser Befehl liefert jeweils nur den ersten Kunden jedes Landes
-- und macht somit in dieser Form keinen Sinn

-- GROUP BY ermöglicht statistische Auswertungen je Gruppe
-- mit COUNT, MAX, MIN, AVG können
-- die Anzahl (COUNT) der Datensetze je Gruppe
-- einen Maximalwert (MAX) für ein Feld innerhalb der Gruppe
-- einen Minimalwert (MIN) für ein Feld innerhalb der Gruppe
-- einen Durchschnittswert/Mittelwert (AVG) für ein Feld innerhalb der Gruppe
-- ermittelt werden

-- COUNT: z.B. um die Anzahl der Kunden jedes Landes zu ermitteln
SELECT country, count(customerNumber) FROM customers
GROUP BY country;
-- sortiert nach der Anzahl der Kunden (absteigend)
SELECT country, count(customerNumber) as anzahl FROM customers
GROUP BY country
ORDER BY anzahl DESC, country;

-- MAX: z.B. das höchste Kreditlimit eines Kunden ermitteln
SELECT country, max(creditLimit) as max_Kredit FROM customers
GROUP BY country
ORDER BY max_Kredit DESC;

-- MAX: z.B. das niedrigste  Kreditlimit eines Kunden ermitteln
SELECT country, min(creditLimit) as min_Kredit FROM customers
GROUP BY country
ORDER BY min_Kredit DESC;

-- MAX: z.B. das durchschnittliche Kreditlimit eines Kunden ermitteln
SELECT country, avg(creditLimit) as avg_Kredit FROM customers
GROUP BY country
ORDER BY avg_Kredit DESC;

-- HINWEIS: die statistischen Auswertungen funktionieren grundsätzlich auch ohne GROUP BY
-- z.B. um die Anzahl der Datensätze einer Tabelle zu ermitteln
SELECT count(*) FROM customers;
-- z.B. das höchste / niedrigste /durchschnittliche Kreditlimit aller Kunden ermitteln
SELECT max(creditLimit) FROM customers;
SELECT min(creditLimit) FROM customers;
SELECT avg(creditLimit) FROM customers;

SELECT * FROM customers
