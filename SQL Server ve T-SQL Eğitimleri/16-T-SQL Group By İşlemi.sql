-- GROUP BY
-- E�er ki SELECT sorgusunda bir normal kolon bir de ayriyetten aggregate fonksiyonu �a��r�l�yorsa normal olan kolonu gruplaman�z gerekecektir.

SELECT * FROM Urunler

SELECT KategoriID,COUNT(*) FROM Urunler
GROUP BY KategoriID

SELECT PersonelID,COUNT(*) FROM Satislar
GROUP BY PersonelID

SELECT PersonelID,SUM(NakliyeUcreti) FROM Satislar
GROUP BY PersonelID
