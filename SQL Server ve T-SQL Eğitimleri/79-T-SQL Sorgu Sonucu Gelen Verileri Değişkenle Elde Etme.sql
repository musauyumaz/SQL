-- Sorgu Sonucu Gelen Verileri Deðiþkenle Elde Etme

DECLARE @ADI NVARCHAR(MAX), @SOYADI NVARCHAR(MAX)

SELECT @ADI=Adi, @SOYADI=SoyAdi FROM Personeller WHERE PersonelID = 1

-- 1. Sorgu sonucu gelen satýr sayýsý bir adet olmalýdýr.
-- 2. Kolonlardaki verilerin tipleri ne ise o verileri temsil edecek deðiþkenlerin tipleri de benzer olmalýdýr.

SELECT @ADI,@SOYADI