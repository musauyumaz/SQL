-- == Otomatik Hesaplanabilir Kolonlar - Computed Column ==
-- Herhangi bir kolonda fonksiyon kullan�larak otomatik hesaplanabilir kolonlar(Computed Column) olu�turmak m�mk�nd�r.

CREATE FUNCTION TOPLA(@SAYI1 INT, @SAYI2 INT) RETURNS INT
AS 
BEGIN
	RETURN @SAYI1 + @SAYI2
END

SELECT UrunAdi,DBO.TOPLA(BirimFiyati,HedefStokDuzeyi) HESAPLANMISKOLON FROM Urunler

-- �rnek 
-- ��kt� olarak "____ kategorisindeki _____ �r�n�n�n toplam fiyat� : ____'d�r. �eklinde bir ��kt� veren fonksiyonu yazal�m.
CREATE FUNCTION RAPOR(@KATEGORI NVARCHAR(MAX),@URUNADI NVARCHAR(MAX), @BIRIMFIYATI INT, @STOK INT) RETURNS NVARCHAR(MAX)
AS
	BEGIN
		DECLARE @CIKTI NVARCHAR(MAX) = @KATEGORI + ' kategorisindeki ' + @URUNADI + ' �r�n�n�n toplam fiyat� : ' + CAST(@BIRIMFIYATI * @STOK AS NVARCHAR(MAX)) + ' ''DIR.'
		RETURN @CIKTI
	END

SELECT DBO.RAPOR(K.KategoriAdi,U.UrunAdi,U.BirimFiyati,U.HedefStokDuzeyi)  FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID
