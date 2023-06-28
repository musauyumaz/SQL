-- 12-String Fonksiyonlarý Alýþtýrma 2
-- Elimizde bir ürünler veritabaný var. Bu veritabaný içinde ürün kodlarýnýn ve ürün adlarýný anlamlý bir þekilde kod ve ad kýsmý enter karakteri ile alt alta olacak þekilde getirmek istiyoruz. Çýktý formatý aþaðýdaki gibi olacak þekilde bir SQL cümlesi yazýnýz.
-- ÜRÜN KODU:381
-- ÜRÜN ADI:PIL KODAK ÞARJLI PIL AA*2
-- Kaynak : LAB02


SELECT 'ÜRÜN KODU: ' + ITEMCODE+CHAR(13) + 'ÜRÜN ADI: '+ ITEMNAME + CHAR(13) + '--------------------------' FROM LAB02

SELECT 'A' + CHAR(13) + 'B'
SELECT 'A' + CHAR(32) + 'B'

--ÜRÜN KODU:1
--ÜRÜN ADI : PIL KODAK XTRA HEAVY 9 V
