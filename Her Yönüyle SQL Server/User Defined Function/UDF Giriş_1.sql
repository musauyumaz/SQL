-- Fonksiyonlar içerisine parametre alýr ya da almaz bu parametreler bir veya birden fazla da olabilir ve sonucunda bir sonuç döndüren yapýlardýr.

-- Her SQL SERVER nesnesi gibi fonksiyonlarda CREATE komutuyla oluþturulur ALTER komutuyla deðiþtirilir DROP ile silinir.
CREATE FUNCTION DBO.TOPLA(@SAYI1 AS INT, @SAYI2 AS INT)
RETURNS INT 
AS 
BEGIN 
DECLARE @SONUC AS INT 
SET @SONUC =@SAYI1+@SAYI2
RETURN @SONUC
END

SELECT DBO.TOPLA(13,39)