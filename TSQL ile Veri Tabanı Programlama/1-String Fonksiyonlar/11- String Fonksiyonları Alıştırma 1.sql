-- String Fonksiyonlar� Al��t�rma 1
-- Elimizde Hollywood y�ld�zlar�n�n oldu�u bir veritaban� var. Bu veritaban� �zerinde NAME_ ve SURNAME alanlar� var. Bu tabloya yeni NAMESURNAME isimli bir alan ekleyiniz ve bu alan� NAME ve SURNAME alanlar�n� birle�tirerek g�ncelleyeniz.
-- Kaynak Tablo : LAB01

SELECT * FROM LAB01
UPDATE LAB01 SET NAMESURNAME = NAME_ + ' ' + SURNAME