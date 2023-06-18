-- UPDATE
-- UPDATE kullanýrken þart kullanmak gerekiyorsa kullanýlmaldýr aksi taktirde tüm verilerin üzerinde iþlem yapýlýr ve hepsinin üzerinde gerçekleþir.

-- UPDATE [TABLO ADI] SET [KOLON ADI] = DEÐER
UPDATE ORNEKPERSONELLER SET ADI = 'MEHMET'

-- [UPDATE Sorgusuna WHERE Þartý Yazmak]
UPDATE ORNEKPERSONELLER SET ADI = 'MEHMET' WHERE ADI= 'NANCY'
UPDATE ORNEKPERSONELLER SET ADI = 'AYÞE' WHERE SOYADI = 'Davolio'

-- [UPDATE Sorgusunda Join Yapýlarýný Kullanarak Birden Fazla Tabloda Güncelleme Yapmak]
UPDATE Urunler SET UrunAdi = K.KategoriAdi FROM Urunler U INNER JOIN Kategoriler K ON U.KategoriID = K.KategoriID

-- [UPDATE Sorgusunda Subquery Ýle Güncelleme Yapmak]
UPDATE Urunler SET UrunAdi = (SELECT UrunAdi FROM Personeller WHERE PersonelID = 3)

-- [UPDATE Sorgusunda TOP Keywordü Ýle Güncelleme Yapmak]
UPDATE TOP(30) Urunler SET UrunAdi = 'x'

