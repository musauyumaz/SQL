-- WHILE D�ng�s� CONTINUE Komutu
-- CONTINUE komutu derleyici taraf�ndan kar��la��ld��� zaman Continue komutundan sonraki komutlar i�lenmemektedir.

DECLARE @SAYAC INT = 0

WHILE @SAYAC < 100
	BEGIN 
		SET @SAYAC = @SAYAC + 1
		IF @SAYAC % 5 = 0
			CONTINUE
		PRINT @SAYAC
	END

WHILE @SAYAC < 1000
	BEGIN 
		IF @SAYAC % 5 = 0
			BEGIN
				SET @SAYAC = @SAYAC + 1
				CONTINUE
			END
		PRINT @SAYAC
		SET @SAYAC = @SAYAC + 1
	END