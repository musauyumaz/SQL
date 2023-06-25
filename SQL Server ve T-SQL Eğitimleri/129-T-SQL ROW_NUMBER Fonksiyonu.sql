-- T-SQL ROW_NUMBER Fonksiyonu
-- T-SQL'de SELECT sorgusu neticesinde yapýsal olarak elde ettiðimiz tablolarýn satýr index numaralarýna ihtiyacýmýz olabilir. 
-- Veritabanýnda tekrar eden datalar/veriler varsa veriler arasýnda ayrým yapmak yahut sýralamak gibi iþlemler yapmak istiyorsak ROW_NUMBER() fonksiyonunu kullanabiliriz.
-- Temelde iþlevi her satýra karþýlýk PRIMARY kolonundan baðýmsýz sýralý index numarasý atanmýþ kolon tanýmlanmaktadýr.

-- Prototipi 
-- SELECT ROW_NUMBER() OVER(ORDER BY KOLONADI) INDEXER, * FROM TABLO 

SELECT ROW_NUMBER() OVER(ORDER BY Adi) INDEXER, * FROM Personeller ORDER BY PersonelID