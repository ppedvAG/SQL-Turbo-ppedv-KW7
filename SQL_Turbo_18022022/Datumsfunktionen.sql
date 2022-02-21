--Getdate() aktuelle Serverzeit
SELECT getdate()

SELECT dateadd(dd, 15, getdate())

--Dateadd(Intervall, "Anzahl", Startdatum) addiert Intervall auf Startdatum
--DD Days, YY Years, MM Month, QQ Quartal usw.


SELECT datediff(dd, '19930224', getdate()) AS TageSeitGeburt


--Aufgabe: Bestellungen (orders) mit Lieferverzögerungen, und wie groß waren diese (in Tagen)

SELECT * FROM Orders


SELECT OrderID, datediff(dd, RequiredDate, ShippedDate) AS Verzug FROM Orders
WHERE datediff(dd, RequiredDate, ShippedDate) > 0
ORDER BY Verzug DESC

SELECT *, datediff(dd, RequiredDate, ShippedDate) FROM orders
WHERE Shippeddate > RequiredDate AND ShipCountry = 'Germany'


--DATENAME(Wochentag, Datum) Gibt den Wochentag aus

SELECT Datename(DW, '19930224')