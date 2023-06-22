-- BATCH Kavram� - GO
-- GO komutu, e�er ki bir pencerede birden fazla i�lem yap�yorsak ve bu i�lemler birbirlerinden ba��ms�z ise bu yap�lar�n birbirlerinden ba��ms�z oldu�unu derleyiciyi de g�stermek istiyorsak bu komutu kullan�yoruz.
-- Birbirlerinden ba��ms�z olan komutlar� ba��ms�zl���n� derleyiciye GO komutu arac�l���yla g�stermi� oluyoruz.
-- GO i�lemi biten komutlar� birbirleriden ay�rmaktad�r.

CREATE DATABASE ORNEKDATABASE
GO
USE ORNEKDATABASE
GO
CREATE TABLE ORNEKTABLO
(
	ID INT PRIMARY KEY IDENTITY(1,1),
	KOLON1 NVARCHAR(MAX),
	KOLON2 NVARCHAR(MAX)
)