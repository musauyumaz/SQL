-- 8-ISDATE Fonksiyonu
-- ��ine ald��� parametrenin tarih t�r�nde olup olmad���n� d�nd�r�r.
-- Tarih de�erini g�nderirken �lkelerdeki tarih tiplerine g�re g�ndermek zorunday�zd�r. E�er bu ayra�lara yakalanmamak istiyorsak Y�l-Ay-G�n(YYYY-MM-dd) �eklinde g�nderebiliriz. 
-- ISDATE fonksiyonu format� bozuk olan tarih format�na uymayan verileri tespit etmek i�in kulland���m�z fonksiyondur.
SELECT ISDATE('19990214')