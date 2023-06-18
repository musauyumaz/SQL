-- INNER JOIN
-- Birden fazla tabloyu ili�kisel kolonlar arac�l���yla birle�tirip tek bir tablo haline getiren bir yap�d�r.

-- Genel Mant�k
-- SELECT * FROM Tablo1 INNER JOIN TABLO2 ON Tablo1.Ili�kiliKolon = Tablo2.Ili�kiliKolon

-- Tablolara alias tan�mlanabilir.
-- SELECT * FROM Tablo1 T1 INNER JOIN TABLO2 T2 ON T1.Ili�kiliKolon = T2.Ili�kiliKolon

-- �ki Tabloyu �li�kisel Birle�tirme

-- Hangi personel hangi sat��lar� yapm��t�r. (Personeller, Sat��lar)
SELECT * FROM Personeller P INNER JOIN Satislar S ON P.PersonelID = S.PersonelID

-- Hangi �r�n hangi kategoride. (Urunler, Kategoriler)
SELECT U.UrunAdi,K.KategoriAdi FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID

-- WHERE Komutunun Kullan�m�

-- Beverages Kategorisindeki �r�nlerim. (Urunler, Kategoriler)
SELECT U.UrunAdi FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID WHERE K.KategoriAdi = 'Beverages'

-- Beverages kategorisindeki �r�nlerimin say�s� ka�t�r. (Urunler, Kategoriler)
SELECT COUNT(U.UrunAdi) FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID WHERE K.KategoriAdi = 'Beverages'

-- Seafood kategorisindeki �r�nlerin listesi (Urunler, Kategoriler)
SELECT U.UrunAdi FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID WHERE K.KategoriAdi = 'Seafood'

-- Hangi Sat��� hangi �al��an�m yapm��? (Sat��lar, Personeller)
SELECT S.SatisID, P.Adi + ' ' +P.SoyAdi FROM Satislar S INNER JOIN Personeller P ON P.PersonelID = S.PersonelID

-- Faks numaras� 'NULL' olmayan tedarik�ilerinden al�nm�� �r�nler nelerdir? (Urunler, Tedarik�iler)
SELECT U.UrunAdi FROM Urunler U INNER JOIN Tedarikciler T ON T.TedarikciID = U.TedarikciID WHERE T.Faks <> 'NULL'
SELECT U.UrunAdi FROM Urunler U INNER JOIN Tedarikciler T ON T.TedarikciID = U.TedarikciID WHERE T.Faks IS NOT NULL