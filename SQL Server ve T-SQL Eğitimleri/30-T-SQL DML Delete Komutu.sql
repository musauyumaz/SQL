-- DELETE
-- DELETE FROM [TABLO ADI]
DELETE FROM Urunler

-- [DELETE Sorgusuna WHERE �art� Yazmak]
DELETE FROM Urunler WHERE KategoriID < 3

-- [Dikkat Edilmesi Gerekenler!!!]
-- DELETE sorgusuyla tablo i�erisindeki verileri silmeniz identity kolonunu s�f�rlamayacakt�r. Silme i�leminden sonra ilk eklenen veride kal�n��� yerden id de�eri verilecektir.
-- Hem identity de�erini s�f�rlamak hem de verileri temizlemek istiyorsak e�er TRUNCATE komutunu kullan�r�z