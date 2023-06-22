-- IF Yapýsý
-- IF dediðimiz yapýda koþulumuzun sonuç olarak TRUE ya da FALSE yani TSQL'de BIT olarak dönmesi gerekmektedir.
-- IF ELSE yapýsý içerisinde birden fazla komut kullanacaksak eðer scope anlamýna gelen BEGIN END yapýsý dediðimiz yapýlarý kullanýrýz. 

-- = : Eþitse C# ==
-- <> : Eþit Deðilse C# !=
-- > : Büyükse
-- < : Küçükse

-- Tek Satýrlýk Çalýþma

DECLARE @ISIM NVARCHAR(MAX)
SET @ISIM = 'MUSA'

IF @ISIM = 'MUSA'
	PRINT 'EVET'
ELSE
	PRINT 'HAYIR'

-- BEGIN END Yapýsý(Scope)

DECLARE @SAYI1 INT = 3
DECLARE @SAYI2 INT = 5

IF @SAYI1 < @SAYI2
	BEGIN 
		PRINT 'EVET SAYI1 SAYI2''DEN KÜÇÜKTÜR.'
		SELECT @SAYI1 [SAYI 1],@SAYI2 [SAYI 2]
	END
ELSE
	BEGIN
		PRINT 'HAYIR SAYI1 SAYI2''DEN KÜÇÜK DEÐÝLDÝR.'
		SELECT @SAYI1 [SAYI 1],@SAYI2 [SAYI 2]
	END

-- Örnek 1
-- Müþteriler tablosunda Amerikalý (USA) müþteri var mý?
SELECT * FROM Musteriler WHERE Ulke = 'USA'

IF @@ROWCOUNT > 0
	PRINT 'EVET VAR'
ELSE 
	PRINT 'HAYIR YOK'

-- @@ROWCOUNT Yapýlan iþlemden etkilenen satýr sayýsýný getirir.

-- Örnek 2
-- Adý 'MUSA' soyadý 'UYUMAZ' olan personel var mý? Varsa Evet desin Yoksa kaydetsin.
DECLARE @ADI NVARCHAR(MAX) = 'MUSA', @SOYADI NVARCHAR(MAX) = 'UYUMAZ'

SELECT * FROM Personeller WHERE Adi = @ADI AND SoyAdi = @SOYADI

IF @@ROWCOUNT > 0
	PRINT 'EVET VAR.'
ELSE
	BEGIN
		PRINT 'HAYIR YOK...'
		INSERT Personeller([SoyAdi], [Adi]) VALUES (@SOYADI,@ADI)
	END
	