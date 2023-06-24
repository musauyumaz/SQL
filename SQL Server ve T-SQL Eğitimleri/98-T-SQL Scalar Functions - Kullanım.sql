-- == Fonksiyon Kullanýmý ==
-- Fonksiyonu kullanýrken þemasýyla beraber çaðrýlmalýdýr.
SELECT DBO.TOPLA(2,5)
PRINT DBO.TOPLA(10,20)

-- ÖRNEK 
-- Northwind veritabanýnda; herhangi bir ürünün %18 KDV dahil olmak üzere toplam maliyetini getiren fonksiyonu yazalým.
CREATE FUNCTION MALIYET(@BIRIMFIYATI INT, @STOKMIKTARI INT) RETURNS NVARCHAR(MAX)
AS 
	BEGIN
		DECLARE @SONUC INT = @BIRIMFIYATI * @STOKMIKTARI * 1.18
		RETURN @SONUC
	END

SELECT DBO.MALIYET(10,20)