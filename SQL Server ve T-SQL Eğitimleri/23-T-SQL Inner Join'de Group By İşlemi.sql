-- INNER JOIN
-- INNER JOIN'DE GROUP BY

-- Hangi personelim(adý ve soyadý ile birlikte) toplam kaç adetlik satýþ yapmýþ. Satýþ adedi 100'den fazla olanlar ve personelin adýnýn baþ harfi M olan kayýtlar gelsin. (Personeller, Satýþlar)
SELECT P.Adi + ' ' + P.SoyAdi ,COUNT(S.SatisID) FROM Personeller P INNER JOIN Satislar S ON S.PersonelID = P.PersonelID WHERE P.Adi LIKE 'M%'
GROUP BY P.Adi + ' ' + P.SoyAdi 
HAVING COUNT(*) > 100

-- Seafood kategorisindeki ürünlerin sayýsý (Urunler, Kategoriler)
SELECT COUNT(*) FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID 
WHERE K.KategoriAdi = 'Seafood'

-- Hangi personelim toplam kaç adet satýþ yapmýþ (Personeller, Satýþlar)
SELECT P.Adi,COUNT(S.SatisID) FROM Personeller P INNER JOIN Satislar S ON S.PersonelID = P.PersonelID
GROUP BY P.Adi

-- En çok satýþ yapan personelim (Personeller, Satýþlar)
SELECT TOP 1 P.Adi,COUNT(S.SatisID) FROM Personeller P INNER JOIN Satislar S ON S.PersonelID = P.PersonelID
GROUP BY P.Adi
ORDER BY COUNT(S.SatisID) DESC

-- Adýnda 'a' harfi olan personellerin satýþ id'si 10500'den büyük olan satýþlarýnýn toplam tutarýný(miktar * birim fiyat) ve bu satýþlarýn hangi tarihte gerçekleþtiðini listele. (Personeller, Satýþlar, Satýþ Detaylarý)
SELECT S.SatisTarihi,SUM(SD.Miktar * SD.BirimFiyati) TOPLAMTUTAR FROM Personeller P INNER JOIN Satislar S ON S.PersonelID = P.PersonelID 
INNER JOIN [Satis Detaylari] SD ON SD.SatisID = S.SatisID
WHERE P.Adi LIKE '%a%' AND S.SatisID > 10500
GROUP BY S.SatisTarihi