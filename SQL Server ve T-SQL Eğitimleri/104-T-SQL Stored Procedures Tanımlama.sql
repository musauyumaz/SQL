-- == STORED PROCEDURE Tanýmlama ==
CREATE PROC SP_ORNEK
(
	@ID INT -- Aksi söylenmediði taktirde bu parametrenin yapýsý inputtur.
)AS
SELECT * FROM Personeller WHERE PersonelID = @ID

-- Dikkat ! ! !
-- Prosedürün parametrelerini tanýmlarken parantez kullanmak zorunlu deðildir ama okunabilirliði arttýrmak için kullanmakta fayda vardýr.
CREATE PROC SP_ORNEK2
	@ID INT,
	@PARAMETRE2 INT,
	@PARAMETRE3 NVARCHAR(MAX)
AS 
SELECT * FROM Personeller WHERE PersonelID = @ID
