--Schritt 1: Backup erstellen

-- SELECT INTO Kopiert Tabelle in neue Tabelle

SELECT * INTO BackupCustomers
FROM Customers

SELECT * FROM BackupCustomers

SELECT * INTO BackupOrders
FROM Orders

SELECT * INTO BackupEmployees
FROM Employees



--INSERT Fügt neue Zeile/Datensatz zu Tabelle hinzu

INSERT INTO BackupCustomers (customerID, CompanyName)
VALUES ('EDEKA', 'Edeka Supermarkt')

SELECT * FROM BackupCustomers
WHERE customerID LIKE 'ED%'

--Sidenote: NULL != '   '

INSERT INTO BackupCustomers
VALUES ('ABCDE', 'Testcompany', 'Müller', 'Herr', 'Rosenweg1', 'Burghausen', 'Bayern', '84489', 'Germany', '+49999', '101234')

INSERT INTO BackupCustomers (CustomerID, COmpanyName)
VALUES ('MeineCompany2')

INSERT INTO BackupCustomers
VALUES ('emfewfwef'), ('jijfwijfwf') --Macht mehrere Einträge


--UPDATE Aktualisiert/ändert bestehende Datensätze

UPDATE BackupCustomers
SET ContactName = 'Krause', ContactTitle = 'Frau'
WHERE CustomerID = 'EDEKA'

--WICHTIG!: Where Klausel nicht vergessen, sonst ALLE Datensätze betroffen!

--Vorsichtshalber: TRANSACTION/COMMIT/ROLLBACK

BEGIN TRANSACTION --Kann eigenständig ausgeführt werden; Versetzt Server in "Freeze Zustand" bis ROLLBACK oder COMMIT ausgeführt

ROLLBACK --Macht Transaction rückgängig
COMMIT --Schreibt Transaction in die Datenbank
SELECT * FROM BackupCustomers

--Dateneintrag/Zelle löschen: MIT UPDATE Spaltenname = NULL
UPDATE BackupCustomers
SET Address = NULL
WHERE CustomerID = 'ABCDE'

--Datensatz/Zeile löschen: MIT DELETE
DELETE FROM BackupCustomers
WHERE CustomerID = 'ABCDE'

--Ganze Tabelle löschen: DROP TABLE
DROP TABLE BackupEmployees2

--Tabelle erstellen: CREATE TABLE
CREATE TABLE Fuhrpark (
	Kennzeichen varchar(10) primary key,
	Model varchar(30),
	PS int,
	AnschaffungsDatum date)

--Tabelle ändern
--Spalte hinzufügen
ALTER TABLE Fuhrpark
ADD Farbe varchar(20)

--Bestehende Spalte (Column) ändern
ALTER TABLE Fuhrpark
ALTER COLUMN AnschaffungsDatum date NOT NULL

--Spalte löschen
ALTER Table Fuhrpark
DROP COLUMN Farbe



--VIEWS / Sichten

CREATE VIEW vVinet
AS
SELECT o.CustomerID, c.companyname, o.orderdate, od.Quantity, od.ProductID, p.ProductName FROM orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN [Order Details] od ON od.OrderID = o.OrderID
JOIN Products p ON p.ProductID = od.ProductID
WHERE o.CustomerID = 'VINET'


SELECT Name FROM Employees

