-- 3-Tip D�n��t�rme Fonksiyonlar� Al��t�rma 1
-- Elimizde bir E-Ticaret firmas�n�n kesmi� oldu�u faturalar�n listesini tutan bir veriseti var. Bu veriseti i�ibde DATE_ alan� DATETIME t�r�nde. Bu tabloda DATE_ alan�n� DATE ve TIME t�r�nde par�alayarak Tarih ve Saat de�erlerini ayr� ayr� getirecek sorguyu yaz�n�z.
-- Kaynak Tablo: LAB01
SELECT *,CONVERT(VARCHAR,DATE_,103),CONVERT(VARCHAR,DATE_,108) FROM LAB01

SELECT 
CAST(DATE_ AS DATE) DATE_,
CAST(DATE_ AS TIME) TIME_,
CONVERT(DATE,DATE_,103) DATE_,
CONVERT(TIME,DATE_,108) TIME_,
CONVERT(VARCHAR,DATE_,103) DATESTR,
CONVERT(VARCHAR,DATE_,108) TIMESTR
FROM LAB01