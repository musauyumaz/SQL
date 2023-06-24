-- == OUTPUT �le De�er D�nd�rme ==
-- INPUT parametre d��ar�dan de�er al�rken OUTPUT parametre i�erideki de�eri d��ar� g�nderir.
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