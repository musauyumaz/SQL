-- 16-String Fonksiyonlar� Al��t�rma 6
-- Elimizde m��terilerin telefon numaralar�n�n bulundu�u bir veritaban� var. Buradaki telefon numaralar�n� a�a��daki gibi formatl� gelecek �ekilde yazd�r�n�z.
-- Format:+90 (555) 123 45 67

SELECT * FROM LAB06
--'03563355976'

SELECT *,'+9'+SUBSTRING(TELNR,1,1) + ' (' + SUBSTRING(TELNR,2,3) + ') ' + SUBSTRING(TELNR,3,3) + ' ' + SUBSTRING(TELNR,6,2) +' '+ SUBSTRING(TELNR,8,2) FROM LAB06