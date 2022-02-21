
--Aufgabe: Zu jeder Bestellung, Companyname + Rechnungssumme (unitprice*quantity)


SELECT c.CustomerID, c.CompanyName, o.OrderID, SUM(UnitPrice*Quantity) AS RechnungsSumme FROM Customers c
JOIN orders o ON c.CustomerID = o.CustomerID
JOIN [Order Details] od ON od.OrderID = o.OrderID
GROUP BY c.CustomerID, c.CompanyName, o.OrderID

--Aggregatfunktionen: SUM(), AVG(), MAX(), MIN(), COUNT()


--GROUP BY Keyword

SELECT c.CustomerID, c.CompanyName, o.OrderID, SUM(UnitPrice*Quantity) AS RechnungsSumme FROM Customers c
JOIN orders o ON c.CustomerID = o.CustomerID
JOIN [Order Details] od ON od.OrderID = o.OrderID
GROUP BY c.CustomerID, c.CompanyName, o.OrderID
ORDER BY CustomerID ASC

--Mit ORDER BY "Spaltenname" k�nnen wir Ergebnisse sortieren


SELECT c.CustomerID, c.CompanyName, o.OrderID, SUM(UnitPrice*Quantity) AS RechnungsSumme FROM Customers c
JOIN orders o ON c.CustomerID = o.CustomerID
JOIN [Order Details] od ON od.OrderID = o.OrderID
GROUP BY c.CustomerID, c.CompanyName, o.OrderID
ORDER BY RechnungsSumme DESC

--Automatisch ASC (ascending) f�r aufsteigend; DESC (descending) f�r absteigend


SELECT AVG(Freight) FROM orders --AVG() Durchschnitt

SELECT MAX(Freight), MIN(Freight) FROM orders --MAX() Gr��te Wert; MIN() kleinster

SELECT SUM(Freight) FROM orders --Summe

SELECT COUNT(*) FROM orders --Z�hlt Zeilen

SELECT COUNT(*), OrderID FROM orders
WHERE Freight > 50
GROUP BY OrderID 


SELECT c.CustomerID, CompanyName, Country FROM orders o
JOIN Customers c ON c.customerID = o.customerID
GROUP BY c.CustomerID, CompanyName, Country
HAVING c.Country LIKE 'G%'

--HAVING Keyword = Selbe wie WHERE, nur f�r Gruppen (GROUP BY)
--Geht auch mit Wildcards LIKE





SELECT AVG(freight), OrderID FROM orders
WHERE Freight > (SELECT AVG(Freight) FROM orders)
GROUP BY OrderID

--L�sung durch Unterabfrage (Subquery) ---> diese wird zuerst berechnet vom SQL Server