-- 3-IIF Komutu
-- SQL c�mleleri i�erisinde standart SELECT c�mleleri i�erisinde kullanabilirsiniz.
-- CASE WHEN'e �ok benzer fakat CASE WHEN'de biz birden fazla n tane �art belirleyebilirken IIF'te sadece 2 �art belirleyebiliyoruz.
SELECT IIF(GENDER='E','ERKEK','KADIN') GENDEREXP,
* 
FROM CUSTOMERS