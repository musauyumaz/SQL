-- Inner Join

-- Ayný Tabloyu Ýliþkisel Olarak Birleþtirme
-- Personellerimin baðlý olarak çalýþtýðý kiþileri listele? (Personeller, Personeller)
SELECT P1.Adi, P2.Adi FROM Personeller P1 INNER JOIN Personeller P2 ON P1.BagliCalistigiKisi = P2.PersonelID 