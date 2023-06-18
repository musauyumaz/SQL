-- INNER JOIN

-- Ýkiden Fazla Tabloyu Ýliþkisel Birleþtirme
-- Ýkiden fazla tabloyu iliþkisel bir þekilde birleþtirme yöntemine giderken dikkat etmemiz gereken nokta birleþtirme esnasýnda birleþtirdiðimiz tablonun diðer tabloyla ortak olan bir iliþkisel kolona ait olmasý gerekmektedir.

-- 1997 yýlýndan sonra Nancy'nin satýþ yaptýðý firmalarýn isimleri : (1997 dahil) (Musteriler, Satislar, Personeller)
SELECT M.SirketAdi FROM Musteriler M INNER JOIN Satislar S ON M.MusteriID = S.MusteriID INNER JOIN Personeller P ON P.PersonelID = S.PersonelID WHERE P.Adi = 'Nancy' AND YEAR(S.SatisTarihi) >= 1997


-- Limited olan tedarikçilerden alýnmýþ Seafood kategorisindeki ürünlerimin toplam satýþ tutarý. (Urunler, Kategoriler, Tedarikçiler)
SELECT SUM(U.BirimFiyati * U.HedefStokDuzeyi) FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID INNER JOIN Tedarikciler T ON T.TedarikciID = U.TedarikciID WHERE K.KategoriAdi = 'Seafood' AND T.SirketAdi LIKE '%Ltd.%'