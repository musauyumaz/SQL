-- GROUP BY
-- Eğer ki SELECT sorgusunda bir normal kolon bir de ayriyetten aggregate fonksiyonu çağırılıyorsa normal olan kolonu gruplamanız gerekecektir.

SELECT * FROM Urunler

SELECT KategoriID,COUNT(*) FROM Urunler
GROUP BY KategoriID

SELECT PersonelID,COUNT(*) FROM Satislar
GROUP BY PersonelID

SELECT PersonelID,SUM(NakliyeUcreti) FROM Satislar
GROUP BY PersonelID
