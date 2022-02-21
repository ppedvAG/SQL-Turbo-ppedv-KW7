SELECT * FROM orders
WHERE CustomerID = 'VINET'

--JOIN Keyword

SELECT * FROM orders
JOIN Customers ON orders.CustomerID = customers.CustomerID
WHERE orders.CustomerID = 'VINET'

SELECT orders.CustomerID, customers.companyname, orders.orderdate FROM orders
JOIN Customers ON orders.CustomerID = customers.CustomerID
WHERE orders.CustomerID = 'VINET'


SELECT o.CustomerID, c.companyname, o.orderdate FROM orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.CustomerID = 'VINET'

--Wir können Tabellen in der Abfrage auch ein ALIAS zuteilen, erleichtert Schreibarbeit


SELECT o.CustomerID, c.companyname, o.orderdate, od.Quantity, od.ProductID, p.ProductName FROM orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN [Order Details] od ON od.OrderID = o.OrderID
JOIN Products p ON p.ProductID = od.ProductID
WHERE o.CustomerID = 'VINET'

--JOINS können beliebig aneinander gereit werden

--SELECT * FROM Customers c
--JOIN [Order Details] od ON  -- Tabellen können nur direkt miteinander Gejoint werden (direkte Relation)


--Aufgabe: Zu jeder Bestellung, Companyname + Rechnungssumme (unitprice*quantity)

SELECT c.CustomerID, c.CompanyName, o.OrderID, od.Quantity, od.UnitPrice, UnitPrice*Quantity AS PositionsSumme FROM Customers c
JOIN orders o ON c.CustomerID = o.CustomerID
JOIN [Order Details] od ON od.OrderID = o.OrderID