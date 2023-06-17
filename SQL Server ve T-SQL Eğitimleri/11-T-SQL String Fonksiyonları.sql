--STRING FONKSIYONLAR
-- Metinsel deðerler üzerinde iþlem yapmamýzý saðlayan fonksiyonlardýr.

-- LEFT : Soldan(baþtan) belirtilen sayýda karakteri getirir.
SELECT LEFT(Adi,2) FROM Personeller

-- RIGHT : Saðdan(sondan) belirtilen sayýda karakteri getirir.
SELECT RIGHT(Adi,3) FROM Personeller

-- UPPER : Büyük harfe çevirir.
SELECT UPPER(Adi) FROM Personeller

-- LOWER : Küçük harfe çevirir.
SELECT LOWER(Adi) FROM Personeller

-- SUBSTRING : Belirtilen index'ten itibaren belirtilen sayýda karakter getirir
SELECT SUBSTRING(SoyAdi,3,2) FROM Personeller

-- LTRIM : Soldan boþluklarý keser.
SELECT '              MUSA'
SELECT LTRIM('              MUSA')
-- RTRIM : Saðdan boþluklarý keser.
SELECT 'UYUMAZ              '
SELECT RTRIM('UYUMAZ              ')

-- REVERSE : Tersine çevirir.
SELECT REVERSE(Adi) FROM Personeller

-- REPLACE : Belirtilen ifadeyi belirtilen ifade ile deðiþtirir.
SELECT REPLACE('Benim Adým MUSA', 'MUSA','SERHAT')

-- CHARINDEX : Belirtilen karakterin veri içinde sýra numarasýný verir.
--Index numarasýný deðil sýra numarasýný verir!!!
SELECT Adi,CHARINDEX('r',Adi) FROM Personeller
SELECT MusteriAdi, CHARINDEX(' ',MusteriAdi) FROM Musteriler

-- CHARINDEX Örnek
-- Müþteriler tablosunun MusteriAdi kolonundan sadece adlarý çekelim.
SELECT MusteriAdi FROM Musteriler
SELECT MusteriAdi,LEFT(MusteriAdi,CHARINDEX(' ',MusteriAdi)) FROM Musteriler
SELECT SUBSTRING(MusteriAdi,0, CHARINDEX(' ',MusteriAdi)) FROM Musteriler

-- Müþteriler tablosunun MusteriAdi kolonundan sadece soyadlarý çekelim.
SELECT SUBSTRING(MusteriAdi, CHARINDEX(' ', MusteriAdi),LEN(MusteriAdi) - (CHARINDEX(' ', MusteriAdi) - 1)) FROM Musteriler
