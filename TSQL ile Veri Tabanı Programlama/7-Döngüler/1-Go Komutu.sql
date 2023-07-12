-- 1-Go Komutu
-- Kaç kere iþlemin gerçekleþmesini istiyorsak Go komutunu kullanarak deðer verebiliriz.
-- Go komutunu genelde çok tercih etmiyoruz. Go kendinin üstündeki tüm satýrlarý çalýþtýrdýðý için bir Begin End bloðunda tanýmlama imkanýmýz olmadýðý için Go komutu kodlarda döngülerde bize biraz yanlýþ iþlemler yaptýrma riski olan bir komuttur. O yüzden genelde birkaç satýrlýk komutlar için Go komutunu kullanmak mantýklý olacaktýr.
USE TEST

CREATE TABLE DATES(ID INT IDENTITY(1,1),DATE_ DATETIME)

SELECT * FROM DATES

INSERT INTO DATES(DATE_) VALUES(GETDATE())
GO 5