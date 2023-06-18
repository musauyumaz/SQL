-- GROUP BY Ýþleminde HAVING Komutunu Kullanarak Þart Oluþturma
-- WHERE normal kolonlar üzerinde þart uygulayacaðýmýz zaman kullandýðýmýz bir komuttur. Lakin HAVING aggregate fonksiyonu üzerinde þart uygulayacaksak kullandýðýmýz bir komuttur.
-- HAVING komutu GROUP BY'dan sonra yazýlýr.

SELECT * FROM Urunler

SELECT KategoriID,COUNT(*) FROM Urunler WHERE KategoriID > 5 GROUP BY KategoriID HAVING COUNT(*) > 6

SELECT PersonelID,COUNT(*) FROM Satislar WHERE PersonelID < 4 GROUP BY PersonelID

SELECT PersonelID,SUM(NakliyeUcreti) FROM Satislar GROUP BY PersonelID