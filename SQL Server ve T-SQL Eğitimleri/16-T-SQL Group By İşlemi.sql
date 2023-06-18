-- GROUP BY
-- Eðer ki SELECT sorgusunda bir normal kolon bir de ayriyetten aggregate fonksiyonu çaðýrýlýyorsa normal olan kolonu gruplamanýz gerekecektir.

SELECT * FROM Urunler

SELECT KategoriID,COUNT(*) FROM Urunler
GROUP BY KategoriID

SELECT PersonelID,COUNT(*) FROM Satislar
GROUP BY PersonelID

SELECT PersonelID,SUM(NakliyeUcreti) FROM Satislar
GROUP BY PersonelID
