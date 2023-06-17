-- Escape(Kaçýþ) Karakterleri
-- LIKE sorgularýnda kullandýðýmýz %, _, [] gibi özel ifadeler eðer ki verilerimiz içerisinde geçiyorsa sorgulama esnasýnda hata ile karþýlaþabiliriz. Böyle durumlarda bu ifadelerin özel ifade olmadýðýný escape karakterleri ile belirleyebiliriz.

-- [] Operatörü Ýle
-- ESCAPE Komutu Ýle

SELECT * FROM Personeller WHERE Adi LIKE '[_]%'

SELECT * FROM Personeller WHERE Adi LIKE '?_%' ESCAPE '?'


