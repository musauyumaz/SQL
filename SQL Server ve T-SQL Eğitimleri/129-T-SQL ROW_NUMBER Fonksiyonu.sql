-- T-SQL ROW_NUMBER Fonksiyonu
-- T-SQL'de SELECT sorgusu neticesinde yap�sal olarak elde etti�imiz tablolar�n sat�r index numaralar�na ihtiyac�m�z olabilir. 
-- Veritaban�nda tekrar eden datalar/veriler varsa veriler aras�nda ayr�m yapmak yahut s�ralamak gibi i�lemler yapmak istiyorsak ROW_NUMBER() fonksiyonunu kullanabiliriz.
-- Temelde i�levi her sat�ra kar��l�k PRIMARY kolonundan ba��ms�z s�ral� index numaras� atanm�� kolon tan�mlanmaktad�r.

-- Prototipi 
-- SELECT ROW_NUMBER() OVER(ORDER BY KOLONADI) INDEXER, * FROM TABLO 

SELECT ROW_NUMBER() OVER(ORDER BY Adi) INDEXER, * FROM Personeller ORDER BY PersonelID