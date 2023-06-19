-- BULK INSERT 
-- Önceden fiziksel bir tablonun oluþturulmuþ olmasý gerekmektedir.
-- Harici kaynaktaki kolonlarýmýzýn tipleri ve kaç tane olduðu önemlidir.

BULK INSERT Kisiler
FROM 'D:\Kisiler.txt'
WITH
(
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n'
)