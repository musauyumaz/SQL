-- WHILE D�ng�s� BREAK Komutu
-- Herhangi bir d�ng� i�erisinde compiler/derleyici BREAK komutunu g�r�rse bulundu�u yap�y� terk eder.

DECLARE @SAYAC INT = 0

WHILE @SAYAC < 1000
	BEGIN
		PRINT @SAYAC
		SET @SAYAC = @SAYAC + 1
		IF @SAYAC % 5 = 0
			BREAK
	END