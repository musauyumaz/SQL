-- SUBSTRING --> STRING ifadenin icerisinde belli uzunluktaki bolmeyi almamizi saðlayan bir komut
DECLARE @KELIME AS VARCHAR(100)
SET @KELIME = 'MERHABA DUNYA'
SELECT SUBSTRING(@KELIME,9,5)

-- LOWER --> STRING ifadeyi tamamen kucuk harfe cevirir. UPPER --> STRING ifadeyi tamamen buyuk harfe cevirir.
DECLARE @KELIME AS VARCHAR(100)
SET @KELIME = 'Merhaba Dünya'
SELECT LOWER(@KELIME),UPPER(@KELIME)

-- STRING BIRLESTIRME
DECLARE @AD AS VARCHAR(100)='MUSA'
DECLARE @SOYAD AS VARCHAR(100)='UYUMAZ'
SELECT @AD+' '+@SOYAD

--RIGHT --> Saðdan sayar istenilen karakter kadar alýr, LEFT --> Soldan sayar istenilen karakter kadar alýr
DECLARE @KELIME AS VARCHAR(100)
SET @KELIME = 'Merhaba Dünya'
SELECT LEFT(@KELIME,10),RIGHT(@KELIME,5)

--LTRIM, RTRIM,TRIM --> Bosluk temizleyen komutlardýr. Kirli verileri temizlemekte yogun olarak kullandigimiz bir komut
DECLARE @KELIME AS VARCHAR(100)='  MERHABA DÜNYA  '
SELECT LTRIM(@KELIME),RTRIM(@KELIME),TRIM(@KELIME),LTRIM(RTRIM(@KELIME))
--MERHABA DÜNYA  
--  MERHABA DÜNYA
--MERHABA DÜNYA

--REPLACE --> STRING ifadede ki bazi karakterleri baska karakterlerle degistirmek istersek kullanilir/Bir STRING ifadeyi baska bir STRING ifadeyle degistirir
DECLARE @KELIME AS VARCHAR(100)='MERHABA DÜNYA'
SELECT REPLACE(@KELIME,'Ü','U')
SELECT REPLACE(REPLACE(@KELIME,'MERHABA','HELLO'),'DÜNYA','WORLD')

--LEN --> STRING ifadenin uzunlugunu getirir.
DECLARE @KELIME AS VARCHAR(100)='MERHABA DÜNYA'
SELECT LEN(@KELIME)
SELECT LEN('MERHABA DÜNYA')

--SPLIT --> Bir STRING ifadenin içerisinde belirli bir ayraca gore parcalayip onu tablo olarak donduruyor bize
DECLARE @KELIME AS VARCHAR(100)='MERHABA DÜNYA'
SELECT * FROM string_split(@KELIME, ' ')

DECLARE @KELIME AS VARCHAR(100)='BTK AKADEMÝ BÜNYESÝNDE DÜZENLENEN SQL SERVER EÐÝTÝMÝNÝ BEÐENDÝÐÝNÝZÝ ÜMÝT EDÝYORUZ'
SELECT * FROM string_split(@KELIME, ' ')