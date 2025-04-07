--kommentaar
--SQL SERVER Managment Stuudio
--Connect TO:
--Server Name: (localdb)\mssqllocaldb
--Authentification 2 tüüpi:
--1. Windows Auth - localdb admini õigused
--2. SQL Server Auth - kontrollida varem tehtud kasutajad
CREATE DATABASE saliAndmebaas;
USE saliAndmebaas;

--tabeli loomine
--identity(1,1) - ise täidab tabeli 1,2,3,...
CREATE TABLE inimene(
inimeneID int Primary Key identity(1,1),
nimi varchar(50) unique,
sünniaeg date,
telefon char(12),
pikkus decimal(5,2),
õpilaskodu bit
);
SELECT * FROM inimene;

--tabeli kustutamine
DROP table inimene;
