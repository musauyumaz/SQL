-- Fonksiyonlar i�erisine parametre al�r ya da almaz bu parametreler bir veya birden fazla da olabilir ve sonucunda bir sonu� d�nd�ren yap�lard�r.

-- Her SQL SERVER nesnesi gibi fonksiyonlarda CREATE komutuyla olu�turulur ALTER komutuyla de�i�tirilir DROP ile silinir.
CREATE FUNCTION DBO.TOPLA(@SAYI1 AS INT, @SAYI2 AS INT)
RETURNS INT 
AS 
BEGIN 
DECLARE @SONUC AS INT 
SET @SONUC =@SAYI1+@SAYI2
RETURN @SONUC
END

SELECT DBO.TOPLA(13,39)