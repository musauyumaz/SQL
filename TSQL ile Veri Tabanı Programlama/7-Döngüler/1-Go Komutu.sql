-- 1-Go Komutu
-- Ka� kere i�lemin ger�ekle�mesini istiyorsak Go komutunu kullanarak de�er verebiliriz.
-- Go komutunu genelde �ok tercih etmiyoruz. Go kendinin �st�ndeki t�m sat�rlar� �al��t�rd��� i�in bir Begin End blo�unda tan�mlama imkan�m�z olmad��� i�in Go komutu kodlarda d�ng�lerde bize biraz yanl�� i�lemler yapt�rma riski olan bir komuttur. O y�zden genelde birka� sat�rl�k komutlar i�in Go komutunu kullanmak mant�kl� olacakt�r.
USE TEST

CREATE TABLE DATES(ID INT IDENTITY(1,1),DATE_ DATETIME)

SELECT * FROM DATES

INSERT INTO DATES(DATE_) VALUES(GETDATE())
GO 5