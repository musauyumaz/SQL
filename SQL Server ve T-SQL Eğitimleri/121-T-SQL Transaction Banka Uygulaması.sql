-- �rnek
-- �ki adet banka tablosu olu�tural�m. Bankalar aras� havale i�lemi ger�ekle�tirelim. Ve bu i�lemleri yaparken transaction kullanal�m.

CREATE DATABASE BANKADB
GO
USE BANKADB
GO 
CREATE TABLE ABANKA
(
	HESAPNO INT,
	BAKIYE MONEY
)
GO
CREATE TABLE BBANKA
(
	HESAPNO INT,
	BAKIYE MONEY
)
GO
INSERT ABANKA VALUES(10,1000),
					(20,2500)
INSERT BBANKA VALUES(30,2300),
					(40,760)
GO
CREATE PROC SP_HAVALEYAP
(
	@BANKAKIMDEN NVARCHAR(MAX),
	@GONDERENHESAPNO INT,
	@ALANHESAPNO INT,
	@TUTAR MONEY
)AS
BEGIN TRANSACTION KONTROL
DECLARE @ABAKIYE INT, @BBAKIYE INT, @HESAPTAKIPARA MONEY
IF @BANKAKIMDEN = 'ABANKA'
BEGIN
	SELECT @HESAPTAKIPARA = BAKIYE FROM ABANKA WHERE HESAPNO=@GONDERENHESAPNO
	IF @TUTAR > @HESAPTAKIPARA
	BEGIN
		PRINT CAST(@GONDERENHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTA G�NDER�LMEK �STENEN TUTARDAN DAHA AZ PARA MEVCUTTUR.'
		ROLLBACK -- ��LEMLER� GER� AL
	END
	ELSE
	BEGIN 
		UPDATE ABANKA SET BAKIYE = BAKIYE - @TUTAR WHERE HESAPNO = @GONDERENHESAPNO
		UPDATE BBANKA SET BAKIYE = BAKIYE + @TUTAR WHERE HESAPNO = @ALANHESAPNO
		PRINT 'ABANKASINDAK� '+ CAST(@GONDERENHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTAN ABANKASINDAK� ' +CAST(@ALANHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESABA ' +  CAST(@TUTAR AS NVARCHAR(MAX)) + ' DE�ER�NDE PARA HAVALE ED�LM��T�R.'
		PRINT 'SON DE�ERLER;'

		SELECT @BBAKIYE=BAKIYE FROM BBANKA WHERE HESAPNO = @ALANHESAPNO
		SELECT @ABAKIYE=BAKIYE FROM ABANKA WHERE HESAPNO = @GONDERENHESAPNO
		PRINT 'ABANKASINDAK� ' + CAST(@GONDERENHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTA KALAN BAK�YE : ' + CAST(@ABAKIYE AS NVARCHAR(MAX))
		PRINT 'BBANKASINDAK� ' + CAST(@ALANHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTA KALAN BAK�YE : ' + CAST(@BBAKIYE AS NVARCHAR(MAX))
		COMMIT
	END
END

ELSE
BEGIN
	SELECT @HESAPTAKIPARA=BAKIYE FROM BBANKA WHERE HESAPNO = @GONDERENHESAPNO
	IF @TUTAR > @HESAPTAKIPARA
	BEGIN
		PRINT CAST(@GONDERENHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTA G�NDER�LMEK �STENEN TUTARDAN DAHA AZ PARA MEVCUTTUR.'
		ROLLBACK -- ��LEMLER� GER� AL
	END
	ELSE
	BEGIN
	
	UPDATE BBANKA SET BAKIYE = BAKIYE - @TUTAR WHERE HESAPNO = @GONDERENHESAPNO
	UPDATE ABANKA SET BAKIYE = BAKIYE + @TUTAR WHERE HESAPNO = @ALANHESAPNO
	PRINT 'BBANKASINDAK� '+ CAST(@GONDERENHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTAN ABANKASINDAK� ' +CAST(@ALANHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESABA ' +  CAST(@TUTAR AS NVARCHAR(MAX)) + ' DE�ER�NDE PARA HAVALE ED�LM��T�R.'
	PRINT 'SON DE�ERLER;'

	SELECT @BBAKIYE=BAKIYE FROM BBANKA WHERE HESAPNO = @GONDERENHESAPNO
	SELECT @ABAKIYE=BAKIYE FROM ABANKA WHERE HESAPNO = @ALANHESAPNO
	PRINT 'ABANKASINDAK� ' + CAST(@ALANHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTA KALAN BAK�YE : ' + CAST(@ABAKIYE AS NVARCHAR(MAX))
	PRINT 'BBANKASINDAK� ' + CAST(@GONDERENHESAPNO AS NVARCHAR(MAX)) + ' NUMARALI HESAPTA KALAN BAK�YE : ' + CAST(@BBAKIYE AS NVARCHAR(MAX))
	COMMIT
	END
	END

EXEC SP_HAVALEYAP 'ABANKA', 10,30,100
EXEC SP_HAVALEYAP 'BBANKA', 30,10,300
EXEC SP_HAVALEYAP 'ABANKA',20,40,5000