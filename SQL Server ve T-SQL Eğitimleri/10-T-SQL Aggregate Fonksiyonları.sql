--AGGREGATE FONKSÝYONLAR
-- Tüm veriler tüm satýrlar üzerinde iþlem yapmamýzý saðlayan fonksiyonlardýr.

-- AVG : Ortalama alýr.
SELECT AVG(PersonelID) FROM Personeller

-- MAX : En büyük deðeri bulur.
SELECT MAX(PersonelID) FROM Personeller

-- MIN : En küçük deðeri bulur.
SELECT MIN(PersonelID) FROM Personeller

-- COUNT : Toplam sayýsýný verir.
SELECT COUNT(*) FROM Personeller
SELECT COUNT(Adi) FROM Personeller

-- SUM : Toplamýný verir.
SELECT SUM(NakliyeUcreti) FROM Satislar
