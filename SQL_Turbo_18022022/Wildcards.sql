--Filtern von Strings mit Wildcards

SELECT * FROM Customers
WHERE CompanyName LIKE 'a%' --% bedeutet "alles"

SELECT * FROM Customers
WHERE CompanyName LIKE 'al%' 

SELECT * FROM Customers
WHERE CompanyName LIKE '%a' 

SELECT * FROM Customers
WHERE CompanyName LIKE 'a%b' 


SELECT * FROM Customers
WHERE CompanyName LIKE '[abc]%' -- [xyz] nimmt eines der Zeichen in den Klammern

SELECT * FROM Customers
WHERE PostalCode LIKE '[123]%' -- geht mit Ziffern genauso


SELECT * FROM Customers
WHERE CompanyName LIKE 'a_f%' -- mit '_' nur einzelne Zeichen 

SELECT * FROM orders
WHERE Freight LIKE '12%'


SELECT * FROM Customers
WHERE CompanyName LIKE 'ab%' OR CompanyName LIKE 'bc%' -- Mehrere WHERE Bedingungen können mit OR / AND verknüpft werden

SELECT * FROM Customers
WHERE Country = 'Mexico' AND City = 'México D.F.' AND PostalCode LIKE '%3' -- soviele AND / OR wie wir wollen


SELECT * FROM Customers
WHERE (Country = 'Germany' OR Country = 'France') AND CompanyName LIKE '[abc]%' --AND ist "stärker bindent", Klammern setzen funktioniert



SELECT * FROM Customers WHERE Country = 'Germany'
AND City = 'Bonn' OR City = 'München' --Kommentare sind hilfreich für Nachvollziehbarkeit


USE Northwind

SELECT * FROM Products
WHERE CategoryID = 1 OR CategoryID = 2 OR Category

SELECT * FROM Products
WHERE CategoryID IN (1, 2, 5, 6)

--Statt vieler OR Bedingungen ---> IN (1, 2, 3) verwenden


