-- 16-String Fonksiyonları Alıştırma 6
-- Elimizde müşterilerin telefon numaralarının bulunduğu bir veritabanı var. Buradaki telefon numaralarını aşağıdaki gibi formatlı gelecek şekilde yazdırınız.
-- Format:+90 (555) 123 45 67

SELECT * FROM LAB06
--'03563355976'

SELECT *,'+9'+SUBSTRING(TELNR,1,1) + ' (' + SUBSTRING(TELNR,2,3) + ') ' + SUBSTRING(TELNR,3,3) + ' ' + SUBSTRING(TELNR,6,2) +' '+ SUBSTRING(TELNR,8,2) FROM LAB06