-- 5-D�ng�ler Al��t�rma-3
-- Elimizde ara� modellerinin oldu�u bir veriseti var. Bu veriseti i�in rastgele plaka generate eden T-SQL scriptini yaz�n�z
-- Kaynak DB: LAB_LOOPS
-- Kaynak Tablo: LAB03

--SELECT * FROM LAB03_PLATES
--SELECT * FROM LAB03_CARMODELS
--SELECT * FROM LAB03_CITIES
--SELECT * FROM LAB03_LETTERS

DECLARE @I AS INT = 0

WHILE @I < 1000
BEGIN 
	DECLARE @PLATE AS VARCHAR(20)
	DECLARE @CARID AS INT = 1
	DECLARE @CITYID AS INT = 32
	DECLARE @LETTER1 AS VARCHAR(1)='A'
	DECLARE @LETTER2 AS VARCHAR(1)='B'
	DECLARE @NUMBER AS INT = 1499
	DECLARE @RANDID AS INT 
	
	SELECT TOP 1 @CARID=ID FROM LAB03_CARMODELS ORDER BY NEWID();
	
	SELECT TOP 1 @LETTER1 = LETTER FROM LAB03_LETTERS ORDER BY NEWID();
	SELECT TOP 1 @LETTER2 = LETTER FROM LAB03_LETTERS ORDER BY NEWID();
	SET @NUMBER = 1+ROUND(RAND() * 9999,0)
	SET @RANDID = RAND() * 10337
	SELECT TOP 1 @CITYID =ID FROM LAB03_CITIES WHERE @RANDID BETWEEN RANDOMBEG AND RANDOMEND;
	
	SET @PLATE= REPLICATE('0',2-LEN(@CITYID))+CONVERT(VARCHAR,@CITYID)
	SET @PLATE=@PLATE + @LETTER1 + @LETTER2
	SET @PLATE=@PLATE + CONVERT(VARCHAR,@NUMBER)
	--34 AB 1499
	INSERT INTO LAB03_PLATES(CARID,PLATE) VALUES(@CARID,@PLATE)
	SET @I = @I+1
END

SELECT P.PLATE,C.* FROM LAB03_PLATES P 
JOIN LAB03_CARMODELS C ON C.ID = P.CARID

SELECT LEFT(P.PLATE,2),COUNT(P.ID) FROM LAB03_PLATES P 
JOIN LAB03_CARMODELS C ON C.ID = P.CARID
GROUP BY LEFT(P.PLATE,2) 
ORDER BY 2 DESC