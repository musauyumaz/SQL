-- Escape(Ka���) Karakterleri
-- LIKE sorgular�nda kulland���m�z %, _, [] gibi �zel ifadeler e�er ki verilerimiz i�erisinde ge�iyorsa sorgulama esnas�nda hata ile kar��la�abiliriz. B�yle durumlarda bu ifadelerin �zel ifade olmad���n� escape karakterleri ile belirleyebiliriz.

-- [] Operat�r� �le
-- ESCAPE Komutu �le

SELECT * FROM Personeller WHERE Adi LIKE '[_]%'

SELECT * FROM Personeller WHERE Adi LIKE '?_%' ESCAPE '?'


