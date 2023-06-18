-- INNER JOIN
-- Birden fazla tabloyu iliþkisel kolonlar aracýlýðýyla birleþtirip tek bir tablo haline getiren bir yapýdýr.

-- Genel Mantýk
-- SELECT * FROM Tablo1 INNER JOIN TABLO2 ON Tablo1.IliþkiliKolon = Tablo2.IliþkiliKolon

-- Tablolara alias tanýmlanabilir.
-- SELECT * FROM Tablo1 T1 INNER JOIN TABLO2 T2 ON T1.IliþkiliKolon = T2.IliþkiliKolon

-- Ýki Tabloyu Ýliþkisel Birleþtirme

-- Hangi personel hangi satýþlarý yapmýþtýr. (Personeller, Satýþlar)
SELECT * FROM Personeller P INNER JOIN Satislar S ON P.PersonelID = S.PersonelID

-- Hangi ürün hangi kategoride. (Urunler, Kategoriler)
SELECT U.UrunAdi,K.KategoriAdi FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID

-- WHERE Komutunun Kullanýmý

-- Beverages Kategorisindeki ürünlerim. (Urunler, Kategoriler)
SELECT U.UrunAdi FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID WHERE K.KategoriAdi = 'Beverages'

-- Beverages kategorisindeki ürünlerimin sayýsý kaçtýr. (Urunler, Kategoriler)
SELECT COUNT(U.UrunAdi) FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID WHERE K.KategoriAdi = 'Beverages'

-- Seafood kategorisindeki ürünlerin listesi (Urunler, Kategoriler)
SELECT U.UrunAdi FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID WHERE K.KategoriAdi = 'Seafood'

-- Hangi Satýþý hangi çalýþaným yapmýþ? (Satýþlar, Personeller)
SELECT S.SatisID, P.Adi + ' ' +P.SoyAdi FROM Satislar S INNER JOIN Personeller P ON P.PersonelID = S.PersonelID

-- Faks numarasý 'NULL' olmayan tedarikçilerinden alýnmýþ ürünler nelerdir? (Urunler, Tedarikçiler)
SELECT U.UrunAdi FROM Urunler U INNER JOIN Tedarikciler T ON T.TedarikciID = U.TedarikciID WHERE T.Faks <> 'NULL'
SELECT U.UrunAdi FROM Urunler U INNER JOIN Tedarikciler T ON T.TedarikciID = U.TedarikciID WHERE T.Faks IS NOT NULL