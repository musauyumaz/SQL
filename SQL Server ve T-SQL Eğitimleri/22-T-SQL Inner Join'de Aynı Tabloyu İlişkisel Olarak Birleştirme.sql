-- Inner Join

-- Ayn� Tabloyu �li�kisel Olarak Birle�tirme
-- Personellerimin ba�l� olarak �al��t��� ki�ileri listele? (Personeller, Personeller)
SELECT P1.Adi, P2.Adi FROM Personeller P1 INNER JOIN Personeller P2 ON P1.BagliCalistigiKisi = P2.PersonelID 