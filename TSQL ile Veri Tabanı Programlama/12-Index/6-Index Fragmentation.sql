-- 6-Index Fragmentation
-- Fragmentation : Sisteme yeni gelen kayýtlarýn sýralý bir þekilde deðil pagelerin sonuna sýrasýz bir þekilde yazýlarak kayýtlarýn bir kýsmýnýn sýralý bir þekilde olmasý bir kýsmýnýn da sýrasýz bir þekilde olmasý.

INSERT INTO CUSTOMERS
SELECT TOP 10000 NAMESURNAME, GENDER, BIRTHDATE, CITY, TOWN, TELNR, NAME_, SURNAME, TCNO FROM CUSTOMERS

-- Ýþte bu fragmentation'u önlemek için index rebuild iþlemlerini gerçekleþtiririz. Index'lerin yeniden düzeltilerek sýralý hale getirilmesidir.