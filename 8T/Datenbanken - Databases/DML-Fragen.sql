-- praktische Beispiele zur ITS-201 Zertifizierung
-- Themenbereich DDL

-- Frage 1 - Musterdatenbank db_schule_lessons

use db_schule_lessons;

update t_lessons set thema = 'Introduction' where id=5;


-- Frage 2 - exotisch WRITE Clause (gibt es bei MySQL, MariaDB nicht)


-- Frage 1 - Musterdatenbank db_schule_lessons

-- t_lessons_2 mit (id,lesson) erstellt


-- insert mit subselect
insert into t_lessons_2 (lesson)
select thema from t_lessons;

select * from t_lessons;
select * from t_lessons_2;

-- zur eigentichen Fragestellung 3
-- Which keyword should you include in an UPDATE statement to set a
-- columns value equal to a value that is stored in another table?

update t_lessons_2 set lesson = (select thema from t_lessons where id=5)
where id = 1;

select * from t_lessons_2;

truncate t_lessons_2;

-- Frage 4 - mit DB classicmodels

use classicmodels;
select * from customers where customerNumber=350;
update customers set creditLimit = creditLimit * 1.05
where customerNumber=350;


-- Frage 5 - mit db_schule_lessons
-- DELETE ohne WHERE bzw. TOP* - d.h. alle Datensätze werden gelöscht
use db_schule_lessons;
delete from t_lessons_2;
select * from t_lessons_2;

-- *)Hinweis zu TOP: gibt es nicht in MySQL,MariaDB,Oracle
-- Alternative LIMIT
-- Bsp) die ersten 10 Einträge löschen

delete from t_lessons_2 LIMIT 10;


-- FRAGE 6
-- Where Bedingung mit logischer UND (AND) Verknüpfung


-- FRAGE 7 -- FK Einstellung: CASCADE
-- am BSP db_classicmodels

USE db_classicmodels;

Select c.customerName,c.customerNumber,
       o.orderDate,o.status,o.orderNumber,
       od.productCode,od.quantityOrdered,od.priceEach
FROM customers c JOIN orders o
ON c.customerNumber = o.customerNumber
JOIN orderdetails od
ON o.orderNumber = od.orderNumber;

-- FK Einstellung bei folgenden Tabellen auf CASCADE gestellt:
-- orders, orderdetails, payments

DELETE FROM customers WHERE customerNumber=103;

select * from payments where customerNumber=103;
select * from orders where customerNumber=103;



-- FRAGE 8
-- bei einem INSERT bei dem alle Spalten einer
-- Tabelle befüllt werden müssen diese im
-- Insert Statement nicht angeführt werden
-- BSP db_classicmodels / Tabelle: payments
-- die Tabelle besitzt 4 Spalten

select customerNumber from customers;
-- um festzustellen, welche customerNumbers es gibt

INSERT INTO payments
(customerNumber,checkNumber,paymentDate,amount)
VALUES (125,10000,'2023-01-26',1000);
-- nachdem alle Tabellenfelder der Reihe nach befüllt werden
-- kann das Statement verkürzt werden
INSERT INTO payments
VALUES (125,10001,'2023-01-26',1000);


-- FRAGE 9
-- Befüllen einer Tabelle mit NOT NULL Feldern
-- BSP db_classicmodels / Tabelle: payments
-- die Tabelle hat 4 Felder - alle NOT NULL

-- Wir fügen eine Zahlung hinzu, ohne Angabe eines
-- Betrags
INSERT INTO payments
(customerNumber,checkNumber,paymentDate)
VALUES (125,10002,'2023-01-26');

Select * from payments where customerNumber=125;










