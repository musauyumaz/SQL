-- GROUP BY ��leminde WHERE �art� Kullanma
-- Grammer'de WHERE �art� GROUP BY'dan �nce yaz�lmal�d�r.
SELECT * FROM Urunler

SELECT KategoriID,COUNT(*) FROM Urunler WHERE KategoriID > 5 GROUP BY KategoriID

SELECT PersonelID,COUNT(*) FROM Satislar WHERE PersonelID < 4 GROUP BY PersonelID

SELECT PersonelID,SUM(NakliyeUcreti) FROM Satislar GROUP BY PersonelID