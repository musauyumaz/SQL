-- 7-D�ng�ler Al��t�rma-5
-- Elimizde m��teri �r�n ve ma�aza listelerinin oldu�u bir veritaban� var. Bu veritaban� �zerinde bir d�ng� ile rastgele sat�� ger�ekle�tirilecek ve bunu bir tabloya yazacak scripti yaz�n�z. Rastgele bir m��teri bir y�l i�inde rastgele bir g�n ve saat bir faturada 1-10 aras� rastgele say�da bir �r�n kalem say�s� bir sat�rda 1-10 aras� rastgele bir adet ile bir �r�n miktar� rastgele bir �ehir olacak �ekilde yaz�lacakt�r.
-- Kaynak DB: LAB_LOOPS
-- Kaynak Tablo: LAB05

--SELECT * FROM LAB05_CITIES
--SELECT * FROM LAB05_CUSTOMERS
--SELECT * FROM LAB05_ITEMS
--SELECT * FROM LAB05_SALES

--TRUNCATE TABLE LAB05_SALES
DECLARE @FICHENO AS VARCHAR(20)
	DECLARE @DATE_ AS DATETIME
	DECLARE @ITEMCODE AS VARCHAR(20)
	DECLARE @ITEMNAME AS VARCHAR(100)
	DECLARE @BRAND AS VARCHAR(100)
	DECLARE @CATEGORY1 AS VARCHAR(100) 
	DECLARE @CATEGORY2 AS VARCHAR(100) 
	DECLARE @CATEGORY3 AS VARCHAR(100)
	DECLARE @CATEGORY4 AS VARCHAR(100)
	DECLARE @AMOUNT INT
	DECLARE @PRICE FLOAT
	DECLARE @TOTALPRICE FLOAT 
	DECLARE @CUSTOMERCODE VARCHAR(100)
	DECLARE @CUSTOMERNAME VARCHAR(100)
	DECLARE @CUSTOMERBIRHTDATE DATE 
	DECLARE @CUSTOMERGENDER CHAR(1)
	DECLARE @BRANCH VARCHAR(100)
	DECLARE @CITY VARCHAR(100)
	DECLARE @DISTRICT VARCHAR(100)
	DECLARE @REGION VARCHAR(100)
	DECLARE @RANDID INT
	DECLARE @ITEMCOUNT AS INT

DECLARE @J AS INT = 0
WHILE @J < 10000
BEGIN 
	

	-- FICHENO
	SELECT @FICHENO=CONVERT(INT,MAX(FICHENO))+1 FROM LAB05_SALES
	SET @FICHENO=ISNULL(@FICHENO,'1')
	SET @FICHENO=REPLICATE('0',10-LEN(@FICHENO))+@FICHENO

	-- DATE
	SET @DATE_ = DATEADD(DAY,365*RAND(),'2021-01-01')
	SET @DATE_ = DATEADD(HOUR,8,@DATE_)
	SET @DATE_ = DATEADD(SECOND,RAND()*14*60*60,@DATE_)

	SET @ITEMCOUNT = 1+(RAND()*9)

	SET @RANDID = RAND() * 10037
		SELECT 
		@CITY=CITYNAME,
		@REGION=REGION
		FROM LAB05_CITIES WHERE @RANDID BETWEEN RANDOMBEG AND RANDOMEND

		SELECT TOP 1 
		@CUSTOMERCODE=ID,
		@CUSTOMERNAME=NAMESURNAME,
		@CUSTOMERGENDER=GENDER,
		@CUSTOMERBIRHTDATE=BIRTHDATE,
		@DISTRICT=TOWN
		FROM LAB05_CUSTOMERS WHERE @CITY = CITY ORDER BY NEWID()

		SET @BRANCH=@CITY


	-- ITEMCODE, ITEMNAME, CATEGORY1, CATEGORY2, CATEGORY3, CATEGORY4, BRAND, AMOUNT, PRICE, TOTALPRICE
	DECLARE @I AS INT=0
	WHILE @I < @ITEMCOUNT
	BEGIN
		SELECT TOP 1
		@ITEMCODE = ITEMCODE,
		@ITEMNAME = ITEMNAME,
		@CATEGORY1 = CATEGORY1,
		@CATEGORY2 = CATEGORY2,
		@CATEGORY3 = CATEGORY3,
		@CATEGORY4 = CATEGORY4,
		@BRAND = BRAND,
		@PRICE = SALEPRICE
		FROM LAB05_ITEMS ORDER BY NEWID()
		SET @AMOUNT = 1+RAND()*9
		SET @PRICE = (@PRICE*0.75)*(1+RAND()*0.5)
		SET @TOTALPRICE = @AMOUNT * @PRICE

		-- 
	
		--SELECT 
		--@FICHENO,
		--@DATE_,
		--@ITEMCODE, 
		--@ITEMNAME,
		--@CATEGORY1,
		--@CATEGORY2,
		--@CATEGORY3,
		--@CATEGORY4,
		--@BRAND,
		--@PRICE,
		--@AMOUNT,
		--@TOTALPRICE,
		--@CUSTOMERCODE,
		--@CUSTOMERNAME,
		--@CUSTOMERBIRHTDATE,
		--@CUSTOMERGENDER,
		--@BRANCH,
		--@CITY,
		--@DISTRICT,
		--@REGION,
		--@RANDID


		INSERT INTO LAB05_SALES([FICHENO], [DATE_], [ITEMCODE], [ITEMNAME], [BRAND], [CATEGORY1], [CATEGORY2], [CATEGORY3], [CATEGORY4], [AMOUNT], [PRICE], [TOTALPRICE], [CUSTOMERCODE], [CUSTOMERNAME], [CUSTOMERBIRHTDATE], [CUSTOMERGENDER], [BRANCH], [CITY], [DISTRICT], [REGION])
		VALUES(@FICHENO,@DATE_,@ITEMCODE,@ITEMNAME,@BRAND,@CATEGORY1,@CATEGORY2,@CATEGORY3,@CATEGORY4,@AMOUNT,@PRICE,@TOTALPRICE,
		@CUSTOMERCODE,@CUSTOMERNAME,@CUSTOMERBIRHTDATE,@CUSTOMERGENDER,@BRANCH,@CITY,@DISTRICT,@REGION)
	SET @I = @I +1
	END

END

SELECT * FROM LAB05_SALES