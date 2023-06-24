-- == Otomatik Hesaplanabilir Kolonlar - Computed Column ==
-- Herhangi bir kolonda fonksiyon kullanýlarak otomatik hesaplanabilir kolonlar(Computed Column) oluþturmak mümkündür.

CREATE FUNCTION TOPLA(@SAYI1 INT, @SAYI2 INT) RETURNS INT
AS 
BEGIN
	RETURN @SAYI1 + @SAYI2
END

SELECT UrunAdi,DBO.TOPLA(BirimFiyati,HedefStokDuzeyi) HESAPLANMISKOLON FROM Urunler

-- Örnek 
-- Çýktý olarak "____ kategorisindeki _____ ürününün toplam fiyatý : ____'dýr. þeklinde bir çýktý veren fonksiyonu yazalým.
CREATE FUNCTION RAPOR(@KATEGORI NVARCHAR(MAX),@URUNADI NVARCHAR(MAX), @BIRIMFIYATI INT, @STOK INT) RETURNS NVARCHAR(MAX)
AS
	BEGIN
		DECLARE @CIKTI NVARCHAR(MAX) = @KATEGORI + ' kategorisindeki ' + @URUNADI + ' ürününün toplam fiyatý : ' + CAST(@BIRIMFIYATI * @STOK AS NVARCHAR(MAX)) + ' ''DIR.'
		RETURN @CIKTI
	END

SELECT DBO.RAPOR(K.KategoriAdi,U.UrunAdi,U.BirimFiyati,U.HedefStokDuzeyi)  FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID
