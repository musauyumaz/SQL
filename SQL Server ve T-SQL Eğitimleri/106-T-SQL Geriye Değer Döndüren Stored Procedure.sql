-- == Geriye Deðer Döndüren Stored Procedure Yapýsý ==
CREATE PROC URUNGETIR
(
	@FIYAT MONEY
)AS
SELECT * FROM Urunler WHERE BirimFiyati > @FIYAT
RETURN @@ROWCOUNT

-- == KULLANIMI ==
EXEC URUNGETIR 40
-- Bu þekilde geriye döndürülen deðeri elde etmeksizin kullanýlabilir. Sýkýntý olmaz.

DECLARE @SONUC INT 
EXEC @SONUC = URUNGETIR 40
PRINT CAST(@SONUC AS NVARCHAR(MAX)) + ' ADET ÜRÜN BU ÝÞLEMDEN ETKÝLENMÝÞTÝR'