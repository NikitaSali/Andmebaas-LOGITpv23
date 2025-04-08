--kommentaar
--Xampp control panel
--Connect TO:
--Server Name: localhost - 127.0.0.1
--Authentification:
--kasutaja: root
--parool: ei ole
CREATE DATABASE saliAndmebaas;
USE saliAndmebaas;

--tabeli loomine
--AUTO_INCREMENT - ise täidab tabeli 1,2,3,...
CREATE TABLE inimene(
inimeneID int Primary Key AUTO_INCREMENT,
nimi varchar(50) unique,
sünniaeg date,
telefon char(12),
pikkus decimal(5,2),
õpilaskodu bit
);
SELECT * FROM inimene;

--tabeli kustutamine
DROP table inimene;
--andmete lisamine
--DDL - date definition language
--DML - data manipulation language
INSERT INTO inimene(nimi, sünniaeg, telefon, pikkus, õpilaskodu)
VALUES
('Peeter Uus', '2021-12-30', '2568952', 90.5, 0),
('Kaarel Oja', '2000-12-30', '2568952', 90.5, 0),
('Kask Mati', '1983-12-30', '333333', 140.5, 0),
('Peeter Oja', '2008-12-30', '3333333', 190.5, 0);
SELECT * FROM inimene;
--kustuta id=3
DELETE FROM inimene
WHERE inimeneID=3;




--tabel elukoht
CREATE TABLE elukoht(
elukohtID int PRIMARY KEY AUTO_INCREMENT,
elukoht varchar(50) UNIQUE,
maakond varchar(50));
SELECT * FROM elukoht;
--andmete lisamine tabeli elukoht
INSERT INTO elukoht(elukoht, maakond)
VALUES ('Tartu', 'Tartumaa'),
('Pärnu', 'Pärnumaa');

--tabeli muutmine uue veergu lisamine
ALTER TABLE inimene ADD elukohtID int;
SELECT * FROM inimene;
SELECT * FROM elukoht;
--foreign key lisamine
ALTER TABLE inimene ADD Constraint fk_elukoht
FOREIGN KEY (elukohtID) 
references elukoht(elukohtID);

INSERT INTO inimene(nimi, sünniaeg, telefon, pikkus, õpilaskodu, elukohtID)
VALUES
('Peeter Vana', '2021-12-30', '2568952', 90.5, 0, 1);
SELECT * FROM inimene join elukoht
ON inimene.elukohtID=elukoht.elukohtID;

SELECT inimene.nimi, inimene.sünniaeg, elukoht.elukoht FROM inimene join elukoht
ON inimene.elukohtID=elukoht.elukohtID;

SELECT i.nimi, i.sünniaeg, e.elukoht FROM inimene i join elukoht e
ON i.elukohtID=e.elukohtID;

CREATE TABLE auto(
autoID int PRIMARY KEY AUTO_INCREMENT,
autoNr varchar(50),
mudell varchar(50),
mark varchar(50),
aasta date);
--auto ID lisamine
ALTER TABLE inimene ADD autoID int;
---foreign key
ALTER TABLE inimene ADD Constraint fk_autoID
FOREIGN KEY (autoID) 
references auto(autoID);
select * from auto;
INSERT INTO auto
(autoNr, mudell, mark, aasta)
VALUES ('turbos', 'tunning', 'porche', '2012-3-5')
INSERT INTO inimene
(nimi, sünniaeg, telefon, pikkus, õpilaskodu, elukohtID, autoID)
VALUES ('turbo2', '2001-12-30', '091236543', 10.00, 0, 1, 1)
select i.nimi, a.aasta, a.mark, a.mudell
from inimene i join auto a
on i.elukohtID=a.autoID;
