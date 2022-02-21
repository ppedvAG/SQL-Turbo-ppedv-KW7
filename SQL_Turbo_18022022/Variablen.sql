--Variablen

DECLARE @var1 int = 1, @Freight money, @var3 datetime = '20220218'

SET @freight = (SELECT AVG(freight) FROM orders)

SELECT * FROM orders
WHERE freight > @freight

SET @freight = 100
SELECT @freight


--SET @Variable = neuer Wert


SELECT * FROM orders
WHERE freight > (SELECT AVG(Freight) FROM orders)


--WHILE Schleifen/Loops

DECLARE @counter int = 1
WHILE @Counter < 5 --WHILE Bedingung = "True" wird Anweisung ausgeführt
BEGIN
	SELECT  'hallo'
	SET @counter = @counter + 1
END



DECLARE @counter int = 1
WHILE @Counter < 5
BEGIN
	SELECT  'hallo'
	SET @counter +=1 --alternativ
END



--Aufgabe: Frachtkosten (freight) in orders, solange um 10% erhöhen, bis eine der beiden Bedingungen eintritt:
--AVG(freight) > 100 oder MAX(freight) > 1500

--Wir brauchen:

UPDATE orders
SET freight = freight*1.1


WHILE (SELECT AVG(Freight) FROM orders) < 100 AND (SELECT MAX(Freight) FROM orders) < 1500
BEGIN
UPDATE orders
SET Freight = Freight * 1.1
END
UPDATE orders
SET freight = freight / 1.1


SELECT AVG(freight) FROM orders
SELECT MAX(freight) FROM orders


--Store Procedures / gespeicherte Prozeduren
--CREATE PROC procedure erstellen
CREATE PROC spTest
AS
	SELECT * FROM customers

EXEC spTest --EXEC "name" procedure ausführen

--SPs können Variablen haben

CREATE PROC spLandKunden @Land varchar(30)
AS
	SELECT * FROM customers
	WHERE Country = @Land

EXEC spLandKunden 

--SP ändern durch ALTER PROC
ALTER PROC spLandKunden  @Land varchar(30) = 'Germany'
AS
	SELECT * FROM customers
	WHERE Country = @Land

EXEC spLandKunden 12

ALTER PROC spLandKunden  @Land varchar(1) = 'A'
AS
	SELECT * FROM customers
	WHERE Country LIKE ''@Land'%'



ALTER PROC spLandKunden  @Land varchar(30) = 'Germany', @City varchar(30) = 'München'
AS
	SELECT * FROM customers
	WHERE Country = @Land AND City = @City


EXEC spLandKunden France, Paris