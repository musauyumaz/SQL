-- String Fonksiyonları Alıştırma 1
-- Elimizde Hollywood yıldızlarının olduğu bir veritabanı var. Bu veritabanı üzerinde NAME_ ve SURNAME alanları var. Bu tabloya yeni NAMESURNAME isimli bir alan ekleyiniz ve bu alanı NAME ve SURNAME alanlarını birleştirerek güncelleyeniz.
-- Kaynak Tablo : LAB01

SELECT * FROM LAB01
UPDATE LAB01 SET NAMESURNAME = NAME_ + ' ' + SURNAME