-- 16-String Fonksiyonlarý Alýþtýrma 6
-- Elimizde müþterilerin telefon numaralarýnýn bulunduðu bir veritabaný var. Buradaki telefon numaralarýný aþaðýdaki gibi formatlý gelecek þekilde yazdýrýnýz.
-- Format:+90 (555) 123 45 67

SELECT * FROM LAB06
--'03563355976'

SELECT *,'+9'+SUBSTRING(TELNR,1,1) + ' (' + SUBSTRING(TELNR,2,3) + ') ' + SUBSTRING(TELNR,3,3) + ' ' + SUBSTRING(TELNR,6,2) +' '+ SUBSTRING(TELNR,8,2) FROM LAB06