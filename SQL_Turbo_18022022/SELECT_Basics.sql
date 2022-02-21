USE Northwind

SELECT * FROM Customers  --STRG+E = markierte Zeilen werden ausgef�hrt
-- mit * werden alle Spalten abgerufen

SELECT CustomerID, CompanyName, City FROM Customers

SELECT City, CompanyName, Country FROM Customers 

--Das ist ein Kommentar
/* Kommentar
�ber mehrere Zeilen
bis */

SELECT * FROM Customers
WHERE Country = 'Germany' -- WHERE Spaltenname + Bedingung

SELECT * FROM Orders
WHERE Freight >= 50  --Funktioniert auch mit >, <, >=, <=



SELECT CompanyName AS Kunde, Country AS Land FROM Customers -- ALIASE durch "AS" Keyword vergeben

SELECT Freight AS NettoFrachtkosten, Freight*1.19 AS BruttoFrachtkosten, (Freight*1.19  - Freight) AS MwSt FROM orders

--Spalten k�nnen "neu" erstellt werden; Wir k�nnen mit Rechenoperatoren arbeiten im SELECT (+ - * / % (Mod))