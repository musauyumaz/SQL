-- UPDATE
-- UPDATE kullan�rken �art kullanmak gerekiyorsa kullan�lmald�r aksi taktirde t�m verilerin �zerinde i�lem yap�l�r ve hepsinin �zerinde ger�ekle�ir.

-- UPDATE [TABLO ADI] SET [KOLON ADI] = DE�ER
UPDATE ORNEKPERSONELLER SET ADI = 'MEHMET'

-- [UPDATE Sorgusuna WHERE �art� Yazmak]
UPDATE ORNEKPERSONELLER SET ADI = 'MEHMET' WHERE ADI= 'NANCY'
UPDATE ORNEKPERSONELLER SET ADI = 'AY�E' WHERE SOYADI = 'Davolio'

-- [UPDATE Sorgusunda Join Yap�lar�n� Kullanarak Birden Fazla Tabloda G�ncelleme Yapmak]
UPDATE Urunler SET UrunAdi = K.KategoriAdi FROM Urunler U INNER JOIN Kategoriler K ON U.KategoriID = K.KategoriID

-- [UPDATE Sorgusunda Subquery �le G�ncelleme Yapmak]
UPDATE Urunler SET UrunAdi = (SELECT UrunAdi FROM Personeller WHERE PersonelID = 3)

-- [UPDATE Sorgusunda TOP Keyword� �le G�ncelleme Yapmak]
UPDATE TOP(30) Urunler SET UrunAdi = 'x'

