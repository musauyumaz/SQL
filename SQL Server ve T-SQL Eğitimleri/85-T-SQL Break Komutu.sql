-- WHILE Döngüsü BREAK Komutu
-- Herhangi bir döngü içerisinde compiler/derleyici BREAK komutunu görürse bulunduðu yapýyý terk eder.

DECLARE @SAYAC INT = 0

WHILE @SAYAC < 1000
	BEGIN
		PRINT @SAYAC
		SET @SAYAC = @SAYAC + 1
		IF @SAYAC % 5 = 0
			BREAK
	END