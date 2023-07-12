-- 3-IIF Komutu
-- SQL cümleleri içerisinde standart SELECT cümleleri içerisinde kullanabilirsiniz.
-- CASE WHEN'e çok benzer fakat CASE WHEN'de biz birden fazla n tane þart belirleyebilirken IIF'te sadece 2 þart belirleyebiliyoruz.
SELECT IIF(GENDER='E','ERKEK','KADIN') GENDEREXP,
* 
FROM CUSTOMERS