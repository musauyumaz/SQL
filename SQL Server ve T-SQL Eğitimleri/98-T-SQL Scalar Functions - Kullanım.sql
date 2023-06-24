-- == Fonksiyon Kullan�m� ==
-- Fonksiyonu kullan�rken �emas�yla beraber �a�r�lmal�d�r.
SELECT DBO.TOPLA(2,5)
PRINT DBO.TOPLA(10,20)

-- �RNEK 
-- Northwind veritaban�nda; herhangi bir �r�n�n %18 KDV dahil olmak �zere toplam maliyetini getiren fonksiyonu yazal�m.
CREATE FUNCTION MALIYET(@BIRIMFIYATI INT, @STOKMIKTARI INT) RETURNS NVARCHAR(MAX)
AS 
	BEGIN
		DECLARE @SONUC INT = @BIRIMFIYATI * @STOKMIKTARI * 1.18
		RETURN @SONUC
	END

SELECT DBO.MALIYET(10,20)