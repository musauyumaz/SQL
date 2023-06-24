-- === WITH CHECK OPTION Komutu ===
-- VIEW'in i�erisindeki sorguda bulunan �arta uygun kay�tlar�n INSERT edilmesine m�saade edilip, uymayan kay�tlar�n m�saade edilmemesini sa�layan bir komuttur.

CREATE VIEW ORNEKVIEW2
AS
SELECT Adi,SoyAdi FROM Personeller WHERE Adi LIKE 'a%'

INSERT ORNEKVIEW2 ('AHMET','B�LMEMNEO�LU')
INSERT ORNEKVIEW2 ('MUSA','UYUMAZ')

SELECT * FROM ORNEKVIEW2

-- WITH ENCRYPTION ve WITH SCHEMABINDING komutlar� AS keyword�nden �nce belirtilirken WITH CHECK OPTION komutu WHERE �art�ndan sonra belirtilmelidir.

CREATE VIEW ORNEKVIEW2
AS
SELECT Adi,SoyAdi FROM Personeller WHERE Adi LIKE 'a%'
WITH CHECK OPTION
