-- String Fonksiyonlarý Alýþtýrma 1
-- Elimizde Hollywood yýldýzlarýnýn olduðu bir veritabaný var. Bu veritabaný üzerinde NAME_ ve SURNAME alanlarý var. Bu tabloya yeni NAMESURNAME isimli bir alan ekleyiniz ve bu alaný NAME ve SURNAME alanlarýný birleþtirerek güncelleyeniz.
-- Kaynak Tablo : LAB01

SELECT * FROM LAB01
UPDATE LAB01 SET NAMESURNAME = NAME_ + ' ' + SURNAME