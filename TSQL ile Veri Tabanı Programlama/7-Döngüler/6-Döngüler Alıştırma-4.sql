-- 6-D�ng�ler Al��t�rma-4
-- Elimizde ara� plaka veriseti var. Bir plaka tan�ma noktas�ndan gelen ara�lar� kay�t alt�na almak istiyoruz. Bu noktadan 24 saatte ge�en ara�lar� simule edecek TSQL scriptini yaz�n�z.
-- Kaynak DB: LAB_LOOPS
-- Kaynak Tablo: LAB04
--SELECT * FROM LAB04_CARMODELS
--SELECT * FROM LAB04_PLATES
--SELECT * FROM LAB04_PTSLOG
--SELECT * FROM LAB04_PTSPOINT  

--SELECT DATEADD(MILLISECOND,RAND()*24*60*60*1000,GETDATE())

DECLARE @PTSPOINTID AS INT;
DECLARE @PLATE AS VARCHAR(20);
DECLARE @DATE AS DATETIME = '2022-08-27 00:00:00';
DECLARE @I AS INT = 1

WHILE @I <= 100000
BEGIN 
	SELECT TOP 1 @PTSPOINTID=ID FROM LAB04_PTSPOINT ORDER BY NEWID();
	SELECT TOP 1 @PLATE=PLATE FROM LAB04_PLATES ORDER BY NEWID();
	SET @DATE=DATEADD(MILLISECOND,RAND()*24*60*60*1000,GETDATE())
	
	INSERT INTO LAB04_PTSLOG(PTSPOINTID,PLATE,DATE_) VALUES(@PTSPOINTID,@PLATE,@DATE)
	SET @I = @I +1
END

SELECT P.PTSNAME,L.DATE_,L.PLATE,C.TITLE FROM LAB04_PTSLOG L
JOIN LAB04_PTSPOINT P ON P.ID = L.PTSPOINTID
JOIN LAB04_PLATES PL ON PL.PLATE = L.PLATE
JOIN LAB04_CARMODELS C ON C.ID = PL.CARID
ORDER BY L.DATE_

SELECT DATEPART(HOUR,L.DATE_) HOUR_, COUNT(L.ID) FROM LAB04_PTSLOG L
JOIN LAB04_PTSPOINT P ON P.ID = L.PTSPOINTID
JOIN LAB04_PLATES PL ON PL.PLATE = L.PLATE
JOIN LAB04_CARMODELS C ON C.ID = PL.CARID
GROUP BY DATEPART(HOUR,L.DATE_)
ORDER BY 1
