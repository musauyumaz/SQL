-- == STORED PROCEDURE Tan�mlama ==
CREATE PROC SP_ORNEK
(
	@ID INT -- Aksi s�ylenmedi�i taktirde bu parametrenin yap�s� inputtur.
)AS
SELECT * FROM Personeller WHERE PersonelID = @ID

-- Dikkat ! ! !
-- Prosed�r�n parametrelerini tan�mlarken parantez kullanmak zorunlu de�ildir ama okunabilirli�i artt�rmak i�in kullanmakta fayda vard�r.
CREATE PROC SP_ORNEK2
	@ID INT,
	@PARAMETRE2 INT,
	@PARAMETRE3 NVARCHAR(MAX)
AS 
SELECT * FROM Personeller WHERE PersonelID = @ID
