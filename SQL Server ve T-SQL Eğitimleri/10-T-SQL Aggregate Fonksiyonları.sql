--AGGREGATE FONKS�YONLAR
-- T�m veriler t�m sat�rlar �zerinde i�lem yapmam�z� sa�layan fonksiyonlard�r.

-- AVG : Ortalama al�r.
SELECT AVG(PersonelID) FROM Personeller

-- MAX : En b�y�k de�eri bulur.
SELECT MAX(PersonelID) FROM Personeller

-- MIN : En k���k de�eri bulur.
SELECT MIN(PersonelID) FROM Personeller

-- COUNT : Toplam say�s�n� verir.
SELECT COUNT(*) FROM Personeller
SELECT COUNT(Adi) FROM Personeller

-- SUM : Toplam�n� verir.
SELECT SUM(NakliyeUcreti) FROM Satislar
