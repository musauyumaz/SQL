-- EXISTS Fonksiyonu
-- Herhangi bir sorgu neticesinde gelen tablonun bo� mu dolu mu oldu�unu ��renmemizi sa�layan bir fonksiyondur.

IF EXISTS(SELECT * FROM Personeller)
	PRINT 'DOLU'
ELSE
	PRINT 'BO�'