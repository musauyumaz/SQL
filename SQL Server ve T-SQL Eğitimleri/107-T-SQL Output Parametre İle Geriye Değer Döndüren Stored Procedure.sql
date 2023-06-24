-- == OUTPUT Ýle Deðer Döndürme ==
-- INPUT parametre dýþarýdan deðer alýrken OUTPUT parametre içerideki deðeri dýþarý gönderir.
CREATE PROC SP_ORNEK3
(
	@ID INT,
	@ADI NVARCHAR(MAX) OUTPUT,
	@SOYADI NVARCHAR(MAX) OUTPUT
)AS
SELECT @ADI = Adi, @SOYADI = SoyAdi FROM Personeller WHERE PersonelID = @ID

-- == KULLANIMI ==
DECLARE @ADI NVARCHAR(MAX), @SOYADI NVARCHAR(MAX)
EXEC SP_ORNEK3 3,@ADI OUTPUT, @SOYADI OUTPUT
SELECT @ADI + ' ' + @SOYADI