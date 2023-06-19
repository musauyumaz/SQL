-- BULK INSERT 
-- �nceden fiziksel bir tablonun olu�turulmu� olmas� gerekmektedir.
-- Harici kaynaktaki kolonlar�m�z�n tipleri ve ka� tane oldu�u �nemlidir.

BULK INSERT Kisiler
FROM 'D:\Kisiler.txt'
WITH
(
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n'
)