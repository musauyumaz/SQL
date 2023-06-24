-- == GENEL �RNEK ==
-- D��ar�dan ald��� isim, soyisim ve �ehir bilgilerini Personeller tablosunda ilgili kolonlara ekleyen STORED PROCEDURE'� yaz�n�z
CREATE PROC SP_PERSONELEKLE
(
	@ISIM NVARCHAR(MAX),
	@SOYISIM NVARCHAR(MAX),
	@SEHIR NVARCHAR(MAX)
) AS
INSERT Personeller(Adi,SoyAdi,Sehir) VALUES(@ISIM, @SOYISIM, @SEHIR)


EXEC SP_PERSONELEKLE 'MUSA','UYUMAZ','ESK��EH�R'
SELECT * FROM PERSONELLER