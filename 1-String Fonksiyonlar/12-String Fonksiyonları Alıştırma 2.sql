-- 12-String Fonksiyonlar� Al��t�rma 2
-- Elimizde bir �r�nler veritaban� var. Bu veritaban� i�inde �r�n kodlar�n�n ve �r�n adlar�n� anlaml� bir �ekilde kod ve ad k�sm� enter karakteri ile alt alta olacak �ekilde getirmek istiyoruz. ��kt� format� a�a��daki gibi olacak �ekilde bir SQL c�mlesi yaz�n�z.
-- �R�N KODU:381
-- �R�N ADI:PIL KODAK �ARJLI PIL AA*2
-- Kaynak : LAB02


SELECT '�R�N KODU: ' + ITEMCODE+CHAR(13) + '�R�N ADI: '+ ITEMNAME + CHAR(13) + '--------------------------' FROM LAB02

SELECT 'A' + CHAR(13) + 'B'
SELECT 'A' + CHAR(32) + 'B'

--�R�N KODU:1
--�R�N ADI : PIL KODAK XTRA HEAVY 9 V
