--CASE wird verwendet um "Custom Ausgaben" zu generieren

SELECT OrderID, Quantity as Anzahl,
CASE 
	WHEN Quantity > 30 THEN 'Achtung! Mehr als 30!'
	WHEN Quantity < 30 THEN 'Kein Problem.'
	ELSE 'Genau 30'
END AS StückZahlWarnung

FROM [Order Details]


UPDATE BackupCustomers
SET City = (CASE
				WHEN Country = 'Germany' THEN 'München'
				WHEN Country = 'France' THEN 'Paris'
				WHEN Country = 'Spain' THEN 'Madrid'
				END)


SELECT * FROM BackupCustomers


