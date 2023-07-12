-- 4-�art Bloklar� Al��t�rma-1
-- Elimizde plaka bilgileri ile birlikte ara� verilerinin tutuldu�u bir tablo var. Bu tablodan dinamik �ekilde sorgu �ekmek istiyoruz. Tablomuza @PLATE, @COLOR, @TITLE, @BRAND, @LICENCEDATE1, @LICENCEDATE2 de�i�kenlerini g�nderiyoruz. Bu de�i�kenler bo� geliyor ise varsay�lan de�erlere g�re de�er almas�n� istiyoruz. Bu �ekilde tablodan sorgu �eken T-SQL kodunu yaz�n�z.
-- Kaynak DB:LAB_CONDITION_BLOCKS
-- Kaynak Tablo:LAB01

--SELECT * FROM LAB01

DECLARE @PLATE AS VARCHAR(20)='34%'
DECLARE @COLOR AS VARCHAR(20)='BEYAZ'
DECLARE @TITLE AS VARCHAR(100)='VOLKSWAGEN%'
DECLARE @BRAND AS VARCHAR(20)='VOLKSWAGEN%'
DECLARE @LICENCEDATE1 AS DATE
DECLARE @LICENCEDATE2 AS DATE

IF @PLATE = ''
	SET @PLATE = '%'
IF @COLOR = ''
	SET @COLOR = '%'
IF @TITLE = ''
	SET @TITLE = '%'
IF @BRAND = ''
	SET @BRAND = '%'
--IF @LICENCEDATE1 IS NULL
--	SET @LICENCEDATE1 = GETDATE()
--IF @LICENCEDATE2 IS NULL
--	SET @LICENCEDATE2 = GETDATE()

SELECT * FROM LAB01 
WHERE PLATE LIKE @PLATE
AND COLOR LIKE @COLOR
AND TITLE LIKE @TITLE
AND BRAND LIKE @BRAND
AND LICENCEDATE BETWEEN ISNULL(@LICENCEDATE1,'20180101') AND ISNULL(@LICENCEDATE2,GETDATE())