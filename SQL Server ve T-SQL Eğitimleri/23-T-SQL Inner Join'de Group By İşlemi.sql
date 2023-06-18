-- INNER JOIN
-- INNER JOIN'DE GROUP BY

-- Hangi personelim(ad� ve soyad� ile birlikte) toplam ka� adetlik sat�� yapm��. Sat�� adedi 100'den fazla olanlar ve personelin ad�n�n ba� harfi M olan kay�tlar gelsin. (Personeller, Sat��lar)
SELECT P.Adi + ' ' + P.SoyAdi ,COUNT(S.SatisID) FROM Personeller P INNER JOIN Satislar S ON S.PersonelID = P.PersonelID WHERE P.Adi LIKE 'M%'
GROUP BY P.Adi + ' ' + P.SoyAdi 
HAVING COUNT(*) > 100

-- Seafood kategorisindeki �r�nlerin say�s� (Urunler, Kategoriler)
SELECT COUNT(*) FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID 
WHERE K.KategoriAdi = 'Seafood'

-- Hangi personelim toplam ka� adet sat�� yapm�� (Personeller, Sat��lar)
SELECT P.Adi,COUNT(S.SatisID) FROM Personeller P INNER JOIN Satislar S ON S.PersonelID = P.PersonelID
GROUP BY P.Adi

-- En �ok sat�� yapan personelim (Personeller, Sat��lar)
SELECT TOP 1 P.Adi,COUNT(S.SatisID) FROM Personeller P INNER JOIN Satislar S ON S.PersonelID = P.PersonelID
GROUP BY P.Adi
ORDER BY COUNT(S.SatisID) DESC

-- Ad�nda 'a' harfi olan personellerin sat�� id'si 10500'den b�y�k olan sat��lar�n�n toplam tutar�n�(miktar * birim fiyat) ve bu sat��lar�n hangi tarihte ger�ekle�ti�ini listele. (Personeller, Sat��lar, Sat�� Detaylar�)
SELECT S.SatisTarihi,SUM(SD.Miktar * SD.BirimFiyati) TOPLAMTUTAR FROM Personeller P INNER JOIN Satislar S ON S.PersonelID = P.PersonelID 
INNER JOIN [Satis Detaylari] SD ON SD.SatisID = S.SatisID
WHERE P.Adi LIKE '%a%' AND S.SatisID > 10500
GROUP BY S.SatisTarihi