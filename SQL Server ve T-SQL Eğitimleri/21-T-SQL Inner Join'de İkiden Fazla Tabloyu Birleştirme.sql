-- INNER JOIN

-- �kiden Fazla Tabloyu �li�kisel Birle�tirme
-- �kiden fazla tabloyu ili�kisel bir �ekilde birle�tirme y�ntemine giderken dikkat etmemiz gereken nokta birle�tirme esnas�nda birle�tirdi�imiz tablonun di�er tabloyla ortak olan bir ili�kisel kolona ait olmas� gerekmektedir.

-- 1997 y�l�ndan sonra Nancy'nin sat�� yapt��� firmalar�n isimleri : (1997 dahil) (Musteriler, Satislar, Personeller)
SELECT M.SirketAdi FROM Musteriler M INNER JOIN Satislar S ON M.MusteriID = S.MusteriID INNER JOIN Personeller P ON P.PersonelID = S.PersonelID WHERE P.Adi = 'Nancy' AND YEAR(S.SatisTarihi) >= 1997


-- Limited olan tedarik�ilerden al�nm�� Seafood kategorisindeki �r�nlerimin toplam sat�� tutar�. (Urunler, Kategoriler, Tedarik�iler)
SELECT SUM(U.BirimFiyati * U.HedefStokDuzeyi) FROM Urunler U INNER JOIN Kategoriler K ON K.KategoriID = U.KategoriID INNER JOIN Tedarikciler T ON T.TedarikciID = U.TedarikciID WHERE K.KategoriAdi = 'Seafood' AND T.SirketAdi LIKE '%Ltd.%'