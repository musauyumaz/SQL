-- === WITH CHECK OPTION Komutu ===
-- VIEW'in içerisindeki sorguda bulunan þarta uygun kayýtlarýn INSERT edilmesine müsaade edilip, uymayan kayýtlarýn müsaade edilmemesini saðlayan bir komuttur.

CREATE VIEW ORNEKVIEW2
AS
SELECT Adi,SoyAdi FROM Personeller WHERE Adi LIKE 'a%'

INSERT ORNEKVIEW2 ('AHMET','BÝLMEMNEOÐLU')
INSERT ORNEKVIEW2 ('MUSA','UYUMAZ')

SELECT * FROM ORNEKVIEW2

-- WITH ENCRYPTION ve WITH SCHEMABINDING komutlarý AS keywordünden önce belirtilirken WITH CHECK OPTION komutu WHERE þartýndan sonra belirtilmelidir.

CREATE VIEW ORNEKVIEW2
AS
SELECT Adi,SoyAdi FROM Personeller WHERE Adi LIKE 'a%'
WITH CHECK OPTION
