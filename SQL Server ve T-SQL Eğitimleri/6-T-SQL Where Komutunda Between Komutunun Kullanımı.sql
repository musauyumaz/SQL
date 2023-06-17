-- BETWEEN Komutu
-- Eðer ki WHERE þartý ile belirli bir deðer aralýðýný belirtilecekse yani þartýmýz belirli bir deðer aralýðýysa eðer BETWEEN komutu ile daha pratik þekilde þartýmýzý yazabiliriz.

-- Doðum yýlý 1950 ile 1965 yýllarý arasýnda olan personelleri getirelim
SELECT * FROM Personeller WHERE YEAR(DogumTarihi) BETWEEN 1950 AND 1965