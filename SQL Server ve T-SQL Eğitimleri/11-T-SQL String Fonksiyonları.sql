--STRING FONKSIYONLAR
-- Metinsel de�erler �zerinde i�lem yapmam�z� sa�layan fonksiyonlard�r.

-- LEFT : Soldan(ba�tan) belirtilen say�da karakteri getirir.
SELECT LEFT(Adi,2) FROM Personeller

-- RIGHT : Sa�dan(sondan) belirtilen say�da karakteri getirir.
SELECT RIGHT(Adi,3) FROM Personeller

-- UPPER : B�y�k harfe �evirir.
SELECT UPPER(Adi) FROM Personeller

-- LOWER : K���k harfe �evirir.
SELECT LOWER(Adi) FROM Personeller

-- SUBSTRING : Belirtilen index'ten itibaren belirtilen say�da karakter getirir
SELECT SUBSTRING(SoyAdi,3,2) FROM Personeller

-- LTRIM : Soldan bo�luklar� keser.
SELECT '              MUSA'
SELECT LTRIM('              MUSA')
-- RTRIM : Sa�dan bo�luklar� keser.
SELECT 'UYUMAZ              '
SELECT RTRIM('UYUMAZ              ')

-- REVERSE : Tersine �evirir.
SELECT REVERSE(Adi) FROM Personeller

-- REPLACE : Belirtilen ifadeyi belirtilen ifade ile de�i�tirir.
SELECT REPLACE('Benim Ad�m MUSA', 'MUSA','SERHAT')

-- CHARINDEX : Belirtilen karakterin veri i�inde s�ra numaras�n� verir.
--Index numaras�n� de�il s�ra numaras�n� verir!!!
SELECT Adi,CHARINDEX('r',Adi) FROM Personeller
SELECT MusteriAdi, CHARINDEX(' ',MusteriAdi) FROM Musteriler

-- CHARINDEX �rnek
-- M��teriler tablosunun MusteriAdi kolonundan sadece adlar� �ekelim.
SELECT MusteriAdi FROM Musteriler
SELECT MusteriAdi,LEFT(MusteriAdi,CHARINDEX(' ',MusteriAdi)) FROM Musteriler
SELECT SUBSTRING(MusteriAdi,0, CHARINDEX(' ',MusteriAdi)) FROM Musteriler

-- M��teriler tablosunun MusteriAdi kolonundan sadece soyadlar� �ekelim.
SELECT SUBSTRING(MusteriAdi, CHARINDEX(' ', MusteriAdi),LEN(MusteriAdi) - (CHARINDEX(' ', MusteriAdi) - 1)) FROM Musteriler
