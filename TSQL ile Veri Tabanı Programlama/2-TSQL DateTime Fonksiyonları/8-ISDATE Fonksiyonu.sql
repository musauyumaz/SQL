-- 8-ISDATE Fonksiyonu
-- Ýçine aldýðý parametrenin tarih türünde olup olmadýðýný döndürür.
-- Tarih deðerini gönderirken ülkelerdeki tarih tiplerine göre göndermek zorundayýzdýr. Eðer bu ayraçlara yakalanmamak istiyorsak Yýl-Ay-Gün(YYYY-MM-dd) þeklinde gönderebiliriz. 
-- ISDATE fonksiyonu formatý bozuk olan tarih formatýna uymayan verileri tespit etmek için kullandýðýmýz fonksiyondur.
SELECT ISDATE('19990214')