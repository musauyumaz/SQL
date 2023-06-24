-- == Geriye De�er D�nd�ren Stored Procedure Yap�s� ==
CREATE PROC URUNGETIR
(
	@FIYAT MONEY
)AS
SELECT * FROM Urunler WHERE BirimFiyati > @FIYAT
RETURN @@ROWCOUNT

-- == KULLANIMI ==
EXEC URUNGETIR 40
-- Bu �ekilde geriye d�nd�r�len de�eri elde etmeksizin kullan�labilir. S�k�nt� olmaz.

DECLARE @SONUC INT 
EXEC @SONUC = URUNGETIR 40
PRINT CAST(@SONUC AS NVARCHAR(MAX)) + ' ADET �R�N BU ��LEMDEN ETK�LENM��T�R'