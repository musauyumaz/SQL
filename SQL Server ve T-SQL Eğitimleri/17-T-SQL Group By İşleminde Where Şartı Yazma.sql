-- GROUP BY Ýþleminde WHERE Þartý Kullanma
-- Grammer'de WHERE þartý GROUP BY'dan önce yazýlmalýdýr.
SELECT * FROM Urunler

SELECT KategoriID,COUNT(*) FROM Urunler WHERE KategoriID > 5 GROUP BY KategoriID

SELECT PersonelID,COUNT(*) FROM Satislar WHERE PersonelID < 4 GROUP BY PersonelID

SELECT PersonelID,SUM(NakliyeUcreti) FROM Satislar GROUP BY PersonelID