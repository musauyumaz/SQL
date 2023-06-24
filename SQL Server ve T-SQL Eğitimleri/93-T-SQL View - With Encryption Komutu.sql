-- == WITH ENCRYPTION KOMUTU ==
-- Eðer yazdýðýmýz VIEW'ýn kaynak kodlarýný, Object Explorer penceresinde VIEWS kategorisine sað týklayarak Design Modda açýp görüntülenmesini istemiyorsak WITH ENCRYPTION komutu ile VIEW'ý oluþturmalýyýz.
-- Dikkat ! ! !
-- WITH ENCRYPTION iþleminden sonra VIEW'i oluþturan kiþide dahil kimse komutlarý göremez. Geri dönüþ yoktur. Ancak VIEW'i oluþturan þahsýn komutlarýn yedeðini bulundurmasý gerekmektedir. Ya da WITH ENCRYPTION olmaksýzýn VIEW yapýsýný yeniden ALTER'lamalýyýz.
-- Dikkat ! ! !
-- Bir dikkat etmemiz gereken nokta da WITH ENCRYPTION ifadesini AS keywordünden önce yazmalýyýz.

CREATE VIEW ORNEKVIEWPERSONELLER
WITH ENCRYPTION 
AS 
SELECT Adi,SoyAdi,Unvan FROM Personeller
-- Bu iþlemi yaptýktan sonra Design Modu kapatýlmýþtýr.