-- == GENEL ÖRNEK ==
-- Dýþarýdan aldýðý isim, soyisim ve þehir bilgilerini Personeller tablosunda ilgili kolonlara ekleyen STORED PROCEDURE'ü yazýnýz
CREATE PROC SP_PERSONELEKLE
(
	@ISIM NVARCHAR(MAX),
	@SOYISIM NVARCHAR(MAX),
	@SEHIR NVARCHAR(MAX)
) AS
INSERT Personeller(Adi,SoyAdi,Sehir) VALUES(@ISIM, @SOYISIM, @SEHIR)


EXEC SP_PERSONELEKLE 'MUSA','UYUMAZ','ESKÝÞEHÝR'
SELECT * FROM PERSONELLER