-- 15-String FonksiyonlarI Al��t�rma 5
-- Elimizde mail adresleri bulunan bir m��teri listesi var. Her bir m��terinin gmail, hotmail gibi mail adresleri var. EMAIL alan�n� kullanarak hangi servis sa�lay�c�dan toplamda ka� ki�i oldu�unu listeleyen sorguyu yaz�n�z.
-- Kaynak Tablo : LAB05

SELECT * FROM LAB05

SELECT LEFT(SUBSTRING(EMAIL,CHARINDEX('@',EMAIL) + 1,CHARINDEX('.com',EMAIL)),LEN(SUBSTRING(EMAIL,CHARINDEX('@',EMAIL) + 1,CHARINDEX('.com',EMAIL)))-4),COUNT(*) FROM LAB05
GROUP BY LEFT(SUBSTRING(EMAIL,CHARINDEX('@',EMAIL) + 1,CHARINDEX('.com',EMAIL)),LEN(SUBSTRING(EMAIL,CHARINDEX('@',EMAIL) + 1,CHARINDEX('.com',EMAIL)))-4)

SELECT EMAIL,CHARINDEX('.',EMAIL),LEN(EMAIL) FROM LAB05

SELECT RIGHT(EMAIL,LEN(EMAIL) - CHARINDEX('@',EMAIL)) SERVISSAGLAYICI, COUNT(*) MUSTERISAYISI FROM LAB05 
GROUP BY RIGHT(EMAIL,LEN(EMAIL) - CHARINDEX('@',EMAIL))
ORDER BY 2 DESC