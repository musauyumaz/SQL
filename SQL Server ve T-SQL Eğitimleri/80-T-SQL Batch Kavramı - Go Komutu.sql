-- BATCH Kavramý - GO
-- GO komutu, eðer ki bir pencerede birden fazla iþlem yapýyorsak ve bu iþlemler birbirlerinden baðýmsýz ise bu yapýlarýn birbirlerinden baðýmsýz olduðunu derleyiciyi de göstermek istiyorsak bu komutu kullanýyoruz.
-- Birbirlerinden baðýmsýz olan komutlarý baðýmsýzlýðýný derleyiciye GO komutu aracýlýðýyla göstermiþ oluyoruz.
-- GO iþlemi biten komutlarý birbirleriden ayýrmaktadýr.

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