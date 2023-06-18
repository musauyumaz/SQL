-- DELETE
-- DELETE FROM [TABLO ADI]
DELETE FROM Urunler

-- [DELETE Sorgusuna WHERE Þartý Yazmak]
DELETE FROM Urunler WHERE KategoriID < 3

-- [Dikkat Edilmesi Gerekenler!!!]
-- DELETE sorgusuyla tablo içerisindeki verileri silmeniz identity kolonunu sýfýrlamayacaktýr. Silme iþleminden sonra ilk eklenen veride kalýnýðý yerden id deðeri verilecektir.
-- Hem identity deðerini sýfýrlamak hem de verileri temizlemek istiyorsak eðer TRUNCATE komutunu kullanýrýz