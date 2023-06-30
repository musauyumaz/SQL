-- 3-Tip Dönüþtürme Fonksiyonlarý Alýþtýrma 1
-- Elimizde bir E-Ticaret firmasýnýn kesmiþ olduðu faturalarýn listesini tutan bir veriseti var. Bu veriseti içibde DATE_ alaný DATETIME türünde. Bu tabloda DATE_ alanýný DATE ve TIME türünde parçalayarak Tarih ve Saat deðerlerini ayrý ayrý getirecek sorguyu yazýnýz.
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