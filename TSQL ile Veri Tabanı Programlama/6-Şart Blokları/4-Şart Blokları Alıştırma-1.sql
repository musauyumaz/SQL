-- 4-Þart Bloklarý Alýþtýrma-1
-- Elimizde plaka bilgileri ile birlikte araç verilerinin tutulduðu bir tablo var. Bu tablodan dinamik þekilde sorgu çekmek istiyoruz. Tablomuza @PLATE, @COLOR, @TITLE, @BRAND, @LICENCEDATE1, @LICENCEDATE2 deðiþkenlerini gönderiyoruz. Bu deðiþkenler boþ geliyor ise varsayýlan deðerlere göre deðer almasýný istiyoruz. Bu þekilde tablodan sorgu çeken T-SQL kodunu yazýnýz.
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