-- SUBSTRING --> STRING ifadenin icerisinde belli uzunluktaki bolmeyi almamizi sa�layan bir komut
DECLARE @KELIME AS VARCHAR(100)
SET @KELIME = 'MERHABA DUNYA'
SELECT SUBSTRING(@KELIME,9,5)

-- LOWER --> STRING ifadeyi tamamen kucuk harfe cevirir. UPPER --> STRING ifadeyi tamamen buyuk harfe cevirir.
DECLARE @KELIME AS VARCHAR(100)
SET @KELIME = 'Merhaba D�nya'
SELECT LOWER(@KELIME),UPPER(@KELIME)

-- STRING BIRLESTIRME
DECLARE @AD AS VARCHAR(100)='MUSA'
DECLARE @SOYAD AS VARCHAR(100)='UYUMAZ'
SELECT @AD+' '+@SOYAD

--RIGHT --> Sa�dan sayar istenilen karakter kadar al�r, LEFT --> Soldan sayar istenilen karakter kadar al�r
DECLARE @KELIME AS VARCHAR(100)
SET @KELIME = 'Merhaba D�nya'
SELECT LEFT(@KELIME,10),RIGHT(@KELIME,5)

--LTRIM, RTRIM,TRIM --> Bosluk temizleyen komutlard�r. Kirli verileri temizlemekte yogun olarak kullandigimiz bir komut
DECLARE @KELIME AS VARCHAR(100)='  MERHABA D�NYA  '
SELECT LTRIM(@KELIME),RTRIM(@KELIME),TRIM(@KELIME),LTRIM(RTRIM(@KELIME))
--MERHABA D�NYA  
--  MERHABA D�NYA
--MERHABA D�NYA

--REPLACE --> STRING ifadede ki bazi karakterleri baska karakterlerle degistirmek istersek kullanilir/Bir STRING ifadeyi baska bir STRING ifadeyle degistirir
DECLARE @KELIME AS VARCHAR(100)='MERHABA D�NYA'
SELECT REPLACE(@KELIME,'�','U')
SELECT REPLACE(REPLACE(@KELIME,'MERHABA','HELLO'),'D�NYA','WORLD')

--LEN --> STRING ifadenin uzunlugunu getirir.
DECLARE @KELIME AS VARCHAR(100)='MERHABA D�NYA'
SELECT LEN(@KELIME)
SELECT LEN('MERHABA D�NYA')

--SPLIT --> Bir STRING ifadenin i�erisinde belirli bir ayraca gore parcalayip onu tablo olarak donduruyor bize
DECLARE @KELIME AS VARCHAR(100)='MERHABA D�NYA'
SELECT * FROM string_split(@KELIME, ' ')

DECLARE @KELIME AS VARCHAR(100)='BTK AKADEM� B�NYES�NDE D�ZENLENEN SQL SERVER E��T�M�N� BE�END���N�Z� �M�T ED�YORUZ'
SELECT * FROM string_split(@KELIME, ' ')