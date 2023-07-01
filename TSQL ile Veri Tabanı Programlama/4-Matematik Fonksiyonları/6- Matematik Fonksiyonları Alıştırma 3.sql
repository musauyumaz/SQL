-- 6- Matematik Fonksiyonlarý Alýþtýrma 3
-- Elimizde satýþlarýn olduðu bir market database'i var. Burada kategori bazlý toplam satýþ cirosunu bulurken ondalýk rakamlardan kurtulmak istiyoruz. FLOOR, CEILING, ROUND ve CONVERT(INT) fonksiyonlarýný kullanarak elde ettiðiniz verileri karþýlaþtýrýnýz.
-- Kaynak Tablo: LAB03
SELECT CATEGORY1+'>'+CATEGORY2+'>'+CATEGORY3+'>'+CATEGORY4+'>' CATEGORY,SUM(TOTALPRICE) TOTALSALE,FLOOR(SUM(TOTALPRICE)) TOTALSALE_FLOOR,CEILING(SUM(TOTALPRICE)) TOTALSALE_CEILING,ROUND(SUM(TOTALPRICE),0) TOTALSALE_ROUND,CONVERT(INT,SUM(TOTALPRICE)) TOTALSALE_INT FROM LAB03
GROUP BY CATEGORY1,CATEGORY2,CATEGORY3,CATEGORY4