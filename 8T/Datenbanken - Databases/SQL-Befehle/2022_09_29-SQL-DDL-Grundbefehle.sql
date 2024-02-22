-- DDL Data Definition Language (ein Teil der SQL Befehle)
-- DDL-Befehle dienen zum Anlegen/Ändern/Löschen von Datenstrukturen (Datenbanken, Tabellen)

-- DDL-Befehle:
-- CREATE, ALTER, DROP

drop database db_schule;

create database db_schule;
create database db_shop;

SELECT * FROM t_students t;
create table t_students;

CREATE TABLE `db_schule`.`t_students` (
  `surname` VARCHAR(20) NOT NULL,
  `givenname` VARCHAR(20) NOT NULL,
  `student_id` INTEGER UNSIGNED NOT NULL,
  `plz` VARCHAR(10) NOT NULL,
  `ort` VARCHAR(20) NOT NULL,
  `strasse` VARCHAR(25) NOT NULL,
  `telefon` VARCHAR(20)
)
ENGINE = InnoDB;

CREATE TABLE `db_schule`.`t_teachers` (
  `surname` VARCHAR(20) NOT NULL,
  `givenname` VARCHAR(20) NOT NULL,
  `teacher_id` INTEGER UNSIGNED NOT NULL,
  `plz` VARCHAR(10) NOT NULL,
  `ort` VARCHAR(20) NOT NULL,
  `strasse` VARCHAR(25) NOT NULL,
  `telefon` VARCHAR(20)
)
ENGINE = InnoDB;

CREATE TABLE `db_schule`.`t_classrooms` (
  `classname` VARCHAR(5) NOT NULL,
  `classroom_id` INTEGER UNSIGNED NOT NULL
)
ENGINE = InnoDB;


-- Eine Tabelle verändern => ALTER TABLE
-- z.B. um ein Primärschlüsselfeld festzulegen

-- PRIMÄRSCHLÜSSELFELD: muss innerhalb einer Tabelle in jeder Zeile eine eindeutige Wertebelegung haben.
-- z.B. sinnvoll für eine Schüler-Nr (jeder Schüler soll eine eindeutige Schüler-Nr besitzen)

ALTER TABLE `db_schule`.`t_students` ADD PRIMARY KEY (`student_id`);


-- mit AUTO INCREMENT wird als Schüler-ID für einen neuen Schüler automatisch
-- ein um eins erhöhter Wert (verglichen mit der bisher höchsten ID) eingefügt
-- d.h. die Schüler-IDs werden Schritt für Schritt automatisch hochgezählt
ALTER TABLE `db_schule`.`t_students` MODIFY COLUMN `student_id` INT(10)
UNSIGNED NOT NULL AUTO_INCREMENT;


-- Eine Tabelle verändern => ALTER TABLE
-- z.B. eine neue Spalte hinzufügen

ALTER TABLE `db_schule`.`t_students` ADD COLUMN `email` VARCHAR(45) AFTER `telefon`;


-- Eine Tabelle löschen => DROP TABLE

DROP TABLE `db_schule`.`t_teachers`;

USE db_schule;
DROP TABLE t_students;
DROP TABLE t_classrooms;

DROP DATABASE db_schule;
DROP DATABASE db_shop;