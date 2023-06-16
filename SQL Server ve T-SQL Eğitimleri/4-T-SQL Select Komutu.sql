USE Northwind

--SELECT KOMUTU
--Verdi�imiz herhangi bir de�eri bize tablo olarak d�nd�ren bir komuttur.

SELECT 3

SELECT 'MUSA'
PRINT 'MUSA'

SELECT 3,5,7

SELECT 'MUSA', 'UYUMAZ',24

-- `*` Karakteri tablonun i�erisindeki b�t�n kolonlar� ifade eden bir karakterdir.
SELECT * FROM Personeller

SELECT Adi,SoyAdi FROM Personeller

-- ALIAS ATAMA
-- Ben bir tabloyu `SELECT` ile �ekti�im zaman tablo i�indeki kolonlar�n isimleri neyse `SELECT`in sonu� olarak olu�turdu�u tabloda o kolon isimleri fiziksel kolondakilerle ayn�d�r. Haliyle ben buradaki isimleri de�i�tirebilirim.
-- Yani kolona bir nitelik at�yoruz.

SELECT 3 AS DE�ER

SELECT 3 DE�ER

SELECT 'MUSA' ADI, 'UYUMAZ' SOYADI

SELECT Adi �S�MLER, SoyAdi SOY�S�MLER FROM Personeller

--Bo�luk Karakteri Olan Alias Atama
SELECT 1453 �STANBULUN FETH�

SELECT 1453 [�STANBULUN FETH�]

--Bo�luk Karakteri Olan Tabloyu Sorgulama
SELECT * FROM Satis Detaylari

SELECT * FROM [Satis Detaylari]

--Kolonlar� Birle�tirme
SELECT Adi,SoyAdi FROM Personeller
SELECT Adi + ' ' + SoyAdi [PERSONEL B�LG�LER�] FROM Personeller

-- Farkl� Tipte Kolonlar� Birle�tirme
--�ki farkl� tipteki kolon direkt olarak `+` operat�r� ile birle�tirilemez. Bu y�zden birle�tirme i�leminde ayn� t�re d�n��t�rmek gerekir

SELECT Adi + ' ' + IseBaslamaTarihi FROM Personeller

SELECT Adi + ' ' + CONVERT(NVARCHAR, IseBaslamaTarihi) FROM Personeller

SELECT Adi + ' ' + CAST(IseBaslamaTarihi AS NVARCHAR) FROM Personeller
