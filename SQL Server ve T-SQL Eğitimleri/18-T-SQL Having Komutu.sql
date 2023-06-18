-- GROUP BY ��leminde HAVING Komutunu Kullanarak �art Olu�turma
-- WHERE normal kolonlar �zerinde �art uygulayaca��m�z zaman kulland���m�z bir komuttur. Lakin HAVING aggregate fonksiyonu �zerinde �art uygulayacaksak kulland���m�z bir komuttur.
-- HAVING komutu GROUP BY'dan sonra yaz�l�r.

SELECT * FROM Urunler

SELECT KategoriID,COUNT(*) FROM Urunler WHERE KategoriID > 5 GROUP BY KategoriID HAVING COUNT(*) > 6

SELECT PersonelID,COUNT(*) FROM Satislar WHERE PersonelID < 4 GROUP BY PersonelID

SELECT PersonelID,SUM(NakliyeUcreti) FROM Satislar GROUP BY PersonelID