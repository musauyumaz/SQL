-- IF Yap�s�
-- IF dedi�imiz yap�da ko�ulumuzun sonu� olarak TRUE ya da FALSE yani TSQL'de BIT olarak d�nmesi gerekmektedir.
-- IF ELSE yap�s� i�erisinde birden fazla komut kullanacaksak e�er scope anlam�na gelen BEGIN END yap�s� dedi�imiz yap�lar� kullan�r�z. 

-- = : E�itse C# ==
-- <> : E�it De�ilse C# !=
-- > : B�y�kse
-- < : K���kse

-- Tek Sat�rl�k �al��ma

DECLARE @ISIM NVARCHAR(MAX)
SET @ISIM = 'MUSA'

IF @ISIM = 'MUSA'
	PRINT 'EVET'
ELSE
	PRINT 'HAYIR'

-- BEGIN END Yap�s�(Scope)

DECLARE @SAYI1 INT = 3
DECLARE @SAYI2 INT = 5

IF @SAYI1 < @SAYI2
	BEGIN 
		PRINT 'EVET SAYI1 SAYI2''DEN K���KT�R.'
		SELECT @SAYI1 [SAYI 1],@SAYI2 [SAYI 2]
	END
ELSE
	BEGIN
		PRINT 'HAYIR SAYI1 SAYI2''DEN K���K DE��LD�R.'
		SELECT @SAYI1 [SAYI 1],@SAYI2 [SAYI 2]
	END

-- �rnek 1
-- M��teriler tablosunda Amerikal� (USA) m��teri var m�?
SELECT * FROM Musteriler WHERE Ulke = 'USA'

IF @@ROWCOUNT > 0
	PRINT 'EVET VAR'
ELSE 
	PRINT 'HAYIR YOK'

-- @@ROWCOUNT Yap�lan i�lemden etkilenen sat�r say�s�n� getirir.

-- �rnek 2
-- Ad� 'MUSA' soyad� 'UYUMAZ' olan personel var m�? Varsa Evet desin Yoksa kaydetsin.
DECLARE @ADI NVARCHAR(MAX) = 'MUSA', @SOYADI NVARCHAR(MAX) = 'UYUMAZ'

SELECT * FROM Personeller WHERE Adi = @ADI AND SoyAdi = @SOYADI

IF @@ROWCOUNT > 0
	PRINT 'EVET VAR.'
ELSE
	BEGIN
		PRINT 'HAYIR YOK...'
		INSERT Personeller([SoyAdi], [Adi]) VALUES (@SOYADI,@ADI)
	END
	