USE Northwind

--SELECT KOMUTU
--Verdiðimiz herhangi bir deðeri bize tablo olarak döndüren bir komuttur.

SELECT 3

SELECT 'MUSA'
PRINT 'MUSA'

SELECT 3,5,7

SELECT 'MUSA', 'UYUMAZ',24

-- `*` Karakteri tablonun içerisindeki bütün kolonlarý ifade eden bir karakterdir.
SELECT * FROM Personeller

SELECT Adi,SoyAdi FROM Personeller

-- ALIAS ATAMA
-- Ben bir tabloyu `SELECT` ile çektiðim zaman tablo içindeki kolonlarýn isimleri neyse `SELECT`in sonuç olarak oluþturduðu tabloda o kolon isimleri fiziksel kolondakilerle aynýdýr. Haliyle ben buradaki isimleri deðiþtirebilirim.
-- Yani kolona bir nitelik atýyoruz.

SELECT 3 AS DEÐER

SELECT 3 DEÐER

SELECT 'MUSA' ADI, 'UYUMAZ' SOYADI

SELECT Adi ÝSÝMLER, SoyAdi SOYÝSÝMLER FROM Personeller

--Boþluk Karakteri Olan Alias Atama
SELECT 1453 ÝSTANBULUN FETHÝ

SELECT 1453 [ÝSTANBULUN FETHÝ]

--Boþluk Karakteri Olan Tabloyu Sorgulama
SELECT * FROM Satis Detaylari

SELECT * FROM [Satis Detaylari]

--Kolonlarý Birleþtirme
SELECT Adi,SoyAdi FROM Personeller
SELECT Adi + ' ' + SoyAdi [PERSONEL BÝLGÝLERÝ] FROM Personeller

-- Farklý Tipte Kolonlarý Birleþtirme
--Ýki farklý tipteki kolon direkt olarak `+` operatörü ile birleþtirilemez. Bu yüzden birleþtirme iþleminde ayný türe dönüþtürmek gerekir

SELECT Adi + ' ' + IseBaslamaTarihi FROM Personeller

SELECT Adi + ' ' + CONVERT(NVARCHAR, IseBaslamaTarihi) FROM Personeller

SELECT Adi + ' ' + CAST(IseBaslamaTarihi AS NVARCHAR) FROM Personeller
