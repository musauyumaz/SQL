-- EXISTS Fonksiyonu
-- Herhangi bir sorgu neticesinde gelen tablonun boþ mu dolu mu olduðunu öðrenmemizi saðlayan bir fonksiyondur.

IF EXISTS(SELECT * FROM Personeller)
	PRINT 'DOLU'
ELSE
	PRINT 'BOÞ'