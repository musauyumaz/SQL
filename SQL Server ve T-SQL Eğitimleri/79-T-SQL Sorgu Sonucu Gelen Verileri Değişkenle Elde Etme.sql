-- Sorgu Sonucu Gelen Verileri De�i�kenle Elde Etme

DECLARE @ADI NVARCHAR(MAX), @SOYADI NVARCHAR(MAX)

SELECT @ADI=Adi, @SOYADI=SoyAdi FROM Personeller WHERE PersonelID = 1

-- 1. Sorgu sonucu gelen sat�r say�s� bir adet olmal�d�r.
-- 2. Kolonlardaki verilerin tipleri ne ise o verileri temsil edecek de�i�kenlerin tipleri de benzer olmal�d�r.

SELECT @ADI,@SOYADI