SELECT TOP(10) * FROM orders


SELECT TOP(1) * FROM orders

--TOP(n) gibt die obersten n Zeilen aus

SELECT TOP(1) * FROM orders
ORDER BY OrderID DESC

-- "Bottom" existiert nicht, einfach mit Order By "umdrehen" und TOP nehmen


--DISTINCT; Filtert gleiche Ergebnisse heraus

SELECT DISTINCT CustomerID FROM orders

SELECT * FROM Customers
