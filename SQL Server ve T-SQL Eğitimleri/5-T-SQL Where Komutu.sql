USE Northwind

-- SELECT Sorgularýnda (Where) Þartý Yazmak
-- SELECT sorgularýnda elde ettiðimiz tablolara belirli þartlar yazmamýzý saðlar.

SELECT * FROM Personeller

-- Personeller tablosunda þehri London olanlarý listeleyelim.
SELECT * FROM Personeller WHERE Sehir = 'London'

-- Personeller tablosunda baðlý çalýþtýðý kiþi sayýsý 5'ten küçük olanlarý listeleyelim.
SELECT * FROM Personeller WHERE BagliCalistigiKisi < 5

-- AND Operatörü
-- Personeller tablosunda þehri London ve ülkesi UK olanlarý listeleyelim.
SELECT * FROM Personeller WHERE Sehir = 'London' AND Ulke='UK'

-- OR Operatörü
-- Personeller tablosunda UnvanEki 'Mr.' olan veya þehri Seattle olan tüm personelleri listeleyelim.
SELECT * FROM Personeller WHERE UnvanEki = 'Mr.' OR Sehir = 'Seattle'

-- Karýþýk Örnekler
-- Adý Robert soyadý King olan personelin tüm bilgilerini çek
SELECT * FROM Personeller WHERE Adi='Robert' AND SoyAdi='King'

-- PersonelID'si 5 olan personeli getir.
SELECT * FROM Personeller WHERE PersonelID=5

-- PersonelID'si 5'ten büyük ve eþit olan tüm personelleri getir.
SELECT * FROM Personeller WHERE PersonelID >=5

-- <> Eþit Deðilse
-- =  Eþitse
-- <= Küçük ve Eþitse
-- >= Büyük ve Eþitse

-- Fonksiyon Sonuçlarýný Þart Olarak Kullanmak
-- 1993 yýlýnda iþe baþlayanlarý listele.
SELECT * FROM Personeller WHERE YEAR(IseBaslamaTarihi)=1993

-- 1992 yýlýndan sonra iþe baþlayanlarý listele
SELECT * FROM Personeller WHERE YEAR(IseBaslamaTarihi)>1992

-- Doðum günü ayýn 29'u olmayan personelleri listeleyelim
SELECT * FROM Personeller WHERE DAY(DogumTarihi) <> 29

-- Doðum yýlý 1950 ile 1965 yýllarý arasýnda olan personelleri getirelim
SELECT * FROM Personeller WHERE YEAR(DogumTarihi) BETWEEN 1950 AND 1965
SELECT * FROM Personeller WHERE YEAR(DogumTarihi)> 1950 AND YEAR(DogumTarihi) < 1965

-- Yaþadýðý þehrin London, Tacoma ve Kirkland olan personellerin adýný listeleyelim
SELECT Adi FROM Personeller WHERE Sehir IN('London','Tacoma','Kirkland')
SELECT Adi FROM Personeller WHERE Sehir ='London' OR Sehir = 'Tacoma' OR Sehir = 'Kirkland'
